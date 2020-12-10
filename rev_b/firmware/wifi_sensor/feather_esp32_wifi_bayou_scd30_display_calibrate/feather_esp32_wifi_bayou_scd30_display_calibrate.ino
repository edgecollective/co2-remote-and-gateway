/**
 * BasicHTTPClient.ino
 *
 *  Created on: 24.05.2015
 *
 */
#include <Arduino.h>
#include <WiFi.h>
#include <WiFiMulti.h>
#include "credentials.h" // My WiFi configuration.

#include <HTTPClient.h>

#define USE_SERIAL Serial
#include <ArduinoJson.h>

#define force_concentration 410

WiFiMulti wifiMulti;

#include <ArduinoJson.h> //https://arduinojson.org/v6/doc/installation/

#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels

// Declaration for an SSD1306 display connected to I2C (SDA, SCL pins)
#define OLED_RESET     -1 // Reset pin # (or -1 if sharing Arduino reset pin)
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

#include "SparkFun_SCD30_Arduino_Library.h" //Click here to get the library: http://librarymanager/All#SparkFun_SCD30
SCD30 airSensor;

#define LED 13

unsigned long lastTime = 0;
// Timer set to 10 minutes (600000)
//unsigned long timerDelay = 600000;
// Set timer to 90 seconds (5000)
unsigned long timerDelay = 90000;

#define sensorID 15

// for max4466
const int sampleWindow = 10000; // Sample window width in mS (50 mS = 20Hz)
unsigned int sample;

float mic_level;

#define delayTime 10000

int loopcount = 0;

void setup() {


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
     
    USE_SERIAL.begin(9600);

    USE_SERIAL.println();
    USE_SERIAL.println();
    USE_SERIAL.println();

    for(uint8_t t = 4; t > 0; t--) {
        USE_SERIAL.printf("[SETUP] WAIT %d...\n", t);
        USE_SERIAL.flush();
        delay(1000);
    }

wifiMulti.addAP(SSID,WiFiPassword);



}

void loop() {

loopcount=loopcount+1;

if(loopcount==5) {

Serial.print("force calibrate to:");
Serial.println(force_concentration);

  airSensor.setForcedRecalibrationFactor(force_concentration);
}

  DynamicJsonDocument doc(1024);

doc["deviceId"] =  sensorID;
JsonObject fields = doc.createNestedObject("fields");


if (airSensor.dataAvailable())
  {

  
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

        fields["temp"]=temp;
   fields["humid"]=humid;
fields["co2"]=co2;

/*
      //do a mic sample
    unsigned long startMillis= millis();  // Start of sample window
   unsigned int peakToPeak = 0;   // peak-to-peak level

   unsigned int signalMax = 0;
   unsigned int signalMin = 4096;


   // collect data for 50 mS
   while (millis() - startMillis < sampleWindow)
   {
      sample = analogRead(26);
      if (sample < 4096)  // toss out spurious readings
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
   double volts = (peakToPeak * 3.3) / 4096;  // convert to volts

mic_level = roundf(volts* 100) / 100;


    Serial.print("Mic level was: ");
    Serial.print(volts);
    Serial.println(" Volts");

   */
//fields["mic"]=mic_level;

/// display parameters display
set_text(temp, humid, co2);

String json;
serializeJson(doc, json);
serializeJson(doc, Serial);

// now send via wifi
// wait for WiFi connection
    if((wifiMulti.run() == WL_CONNECTED)) {

        HTTPClient http;
        int httpCode;

// BAYOU -----------------------------------------------

        USE_SERIAL.print("[HTTP] begin...\n");
        // configure traged server and url
        USE_SERIAL.print(bayou_url);
        
        http.begin(bayou_url);
        http.addHeader("Authorization",bayou_privkey);

        //http.begin(url);
        //http.addHeader(authorize);
        
        http.addHeader("Content-Type", "application/json");
        USE_SERIAL.print("[HTTP] GET...\n");
        // start connection and send HTTP header
        
      
        httpCode = http.PUT(json);        

        // httpCode will be negative on error
        if(httpCode > 0) {
            // HTTP header has been send and Server response header has been handled
            USE_SERIAL.printf("[HTTP] GET... code: %d\n", httpCode);

            // file found at server
            if(httpCode == HTTP_CODE_OK) {
                String payload = http.getString();
                USE_SERIAL.println(payload);
            }
        } else {
            USE_SERIAL.printf("[HTTP] GET... failed, error: %s\n", http.errorToString(httpCode).c_str());
        }

        http.end();
        
        
    } // end if wifi connected
  } // end if air sensor meas avail

    delay(delayTime); // wait a minute until the next post
      
} // end loop

void set_text(float temp, float humid, int co2) {
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
  //display.print("Microphone   ");
  //display.print(mic_level);
  //display.println(" V");
  display.display();
}
