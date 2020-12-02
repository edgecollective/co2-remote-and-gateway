
#include <SPI.h>
#include <Wire.h>

#include <RTCZero.h> //https://github.com/arduino-libraries/RTCZero
#include <RH_RF95.h> https://learn.adafruit.com/adafruit-rfm69hcw-and-rfm96-rfm95-rfm98-lora-packet-padio-breakouts/rfm9x-test
#include <Adafruit_AM2315.h> //https://learn.adafruit.com/am2315-encased-i2c-temperature-humidity-sensor/arduino-code
#include <ArduinoJson.h> //https://arduinojson.org/v6/doc/installation/

#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels

// Declaration for an SSD1306 display connected to I2C (SDA, SCL pins)
#define OLED_RESET     -1 // Reset pin # (or -1 if sharing Arduino reset pin)
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);


#define VBATPIN A7

#define sensorID 12

#define delaytime 3000

 

// for feather m0  
#define RFM95_CS 8
#define RFM95_RST 4
#define RFM95_INT 3

// Change to 434.0 or other frequency, must match RX's freq!
#define RF95_FREQ 915.0

// Singleton instance of the radio driver
RH_RF95 rf95(RFM95_CS, RFM95_INT);

#define LED 13

#include "SparkFun_SCD30_Arduino_Library.h" //Click here to get the library: http://librarymanager/All#SparkFun_SCD30
SCD30 airSensor;

// for max4466
const int sampleWindow = 10000; // Sample window width in mS (50 mS = 20Hz)
unsigned int sample;

float mic_level;

void setup() 
{

  Wire.begin();

  // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { // Address 0x3D for 128x64
    Serial.println(F("SSD1306 allocation failed"));
    for(;;); // Don't proceed, loop forever
  }

if (airSensor.begin() == false)
  {
    Serial.println("Air sensor not detected. Please check wiring. Freezing...");
    while (1)
      ;
  }
  
  display.clearDisplay();

  
  pinMode(LED, OUTPUT);
  
  pinMode(RFM95_RST, OUTPUT);
  digitalWrite(RFM95_RST, HIGH);

  Serial.begin(9600);

  delay(100);

  // manual reset
  digitalWrite(RFM95_RST, LOW);
  delay(10);
  digitalWrite(RFM95_RST, HIGH);
  delay(10);

  while (!rf95.init()) {
    Serial.println("LoRa radio init failed");
    Serial.println("Uncomment '#define SERIAL_DEBUG' in RH_RF95.cpp for detailed debug info");
    while (1);
  }
  Serial.println("LoRa radio init OK!");

  // Defaults after init are 434.0MHz, modulation GFSK_Rb250Fd250, +13dbM
  if (!rf95.setFrequency(RF95_FREQ)) {
    Serial.println("setFrequency failed");
    while (1);
  }
  Serial.print("Set Freq to: "); Serial.println(RF95_FREQ);
  
  // Defaults after init are 434.0MHz, 13dBm, Bw = 125 kHz, Cr = 4/5, Sf = 128chips/symbol, CRC on

  // The default transmitter power is 13dBm, using PA_BOOST.
  // If you are using RFM95/96/97/98 modules which uses the PA_BOOST transmitter pin, then 
  // you can set transmitter powers from 5 to 23 dBm:
  rf95.setTxPower(23, false);

}

int16_t packetnum = 0;  // packet counter, we increment per xmission

void loop()
{

 if (airSensor.dataAvailable())
  {

    //do a mic sample
    unsigned long startMillis= millis();  // Start of sample window
   unsigned int peakToPeak = 0;   // peak-to-peak level

   unsigned int signalMax = 0;
   unsigned int signalMin = 1024;

    int co2 = airSensor.getCO2();
    float temp = roundf(airSensor.getTemperature()* 100) / 100;
    float humid = roundf(airSensor.getHumidity()* 100) / 100;
    
    Serial.print("co2(ppm):");
    Serial.print(co2);

    Serial.print(" temp(C):");
    Serial.print(temp, 1);

    Serial.print(" humidity(%):");
    Serial.println(humid, 1);

    Serial.println();
    Serial.println("collecting mic sample ...");

    
   // collect data for 50 mS
   while (millis() - startMillis < sampleWindow)
   {
      sample = analogRead(0);
      if (sample < 1024)  // toss out spurious readings
      {
         if (sample > signalMax)
         {
            signalMax = sample;  // save just the max levels
         }
         else if (sample < signalMin)
         {
            signalMin = sample;  // save just the min levels
         }
      }
   }
   peakToPeak = signalMax - signalMin;  // max - min = peak-peak amplitude
   double volts = (peakToPeak * 3.3) / 1024;  // convert to volts

mic_level = roundf(volts* 100) / 100;

    Serial.print("Mic level was: ");
    Serial.print(volts);
    Serial.println(" mic_level");
  
   float measuredvbat = analogRead(VBATPIN);
measuredvbat *= 2;    // we divided by 2, so multiply back
measuredvbat *= 3.3;  // Multiply by 3.3V, our reference voltage
measuredvbat /= 1024; // convert to voltage
Serial.print("VBat: " ); Serial.println(measuredvbat);

DynamicJsonDocument doc(1024);

doc["deviceId"] =  sensorID;
JsonObject fields = doc.createNestedObject("fields");

   fields["temp"]=temp;
   fields["humid"]=humid;
fields["batt"]=measuredvbat;
fields["co2"]=co2;
fields["mic"]=mic_level;

set_text(temp, humid, co2,measuredvbat);

  char radiopacket[100];
  serializeJson(doc, radiopacket);
  
  //itoa(packetnum++, radiopacket+13, 10);
  Serial.print("Sending "); Serial.print(radiopacket); Serial.print(" ...");
  delay(10);
  
  rf95.send((uint8_t *)radiopacket, 100);

  delay(10);
  digitalWrite(LED, HIGH);
  rf95.waitPacketSent();
  digitalWrite(LED, LOW);

  Serial.println("... packet sent.");
  rf95.sleep();

  delay(delaytime);
  }

}


void set_text(float temp, float humid, int co2, float batt) {
  display.clearDisplay();
  display.setTextSize(2);      // Normal 1:1 pixel scale
  display.setTextColor(SSD1306_WHITE); // Draw white text
  display.setCursor(0, 0);     // Start at top-left corner
  display.print("CO2: ");
  display.println(co2);
  display.setTextSize(1);      // Normal 1:1 pixel scale
  display.println();
  display.print("Temperature ");
  display.print(temp);
  display.println(" C");
  display.print("Humidity    ");
  display.print(humid);
  display.println(" %");
  display.print("Microphone   ");
  display.print(mic_level);
  display.println(" V");
  display.print("Battery      ");
  display.print(batt);
  display.print(" V");
  display.display();
}
