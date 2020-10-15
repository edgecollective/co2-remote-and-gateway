/*
  Basic Arduino example for K-Series sensor
  Created by Jason Berger
  Co2meter.com  
*/

byte readCO2[] = {0xFE, 0X44, 0X00, 0X08, 0X02, 0X9F, 0X25};  //Command packet to read Co2 (see app note)
byte response[] = {0,0,0,0,0,0,0};  //create an array to store the response

//multiplier for value. default is 1. set to 3 for K-30 3% and 10 for K-33 ICB
int valMultiplier = 1;

int myLED = 13;

void setup() 
{

  pinMode(myLED, OUTPUT);

  // put your setup code here, to run once:
  Serial.begin(9600);         //Opens the main serial port to communicate with the computer
  Serial1.begin(9600); 

  while(!Serial) {
    ;
  }
  
}

void loop() 
{
  
  sendRequest(readCO2);
  unsigned long valCO2 = getValue(response);
  //Serial.print("Co2 ppm = ");
  Serial.println(valCO2);

  delay(5000);

  
}

void sendRequest(byte packet[])
{
  while(!Serial1.available())  //keep sending request until we start to get a response
  {
    Serial1.write(readCO2,7);
    delay(50);
  }
  
  int timeout=0;  //set a timeoute counter
  while(Serial1.available() < 7 ) //Wait to get a 7 byte response
  {
    timeout++;  
    if(timeout > 10)    //if it takes to long there was probably an error
      {
        while(Serial1.available())  //flush whatever we have
          Serial1.read();
          
          break;                        //exit and try again
      }
      delay(50);
  }
  
  for (int i=0; i < 7; i++)
  {
    response[i] = Serial1.read();
  }  
}

unsigned long getValue(byte packet[])
{
    int high = packet[3];                        //high byte for value is 4th byte in packet in the packet
    int low = packet[4];                         //low byte for value is 5th byte in the packet

  
    unsigned long val = high*256 + low;                //Combine high byte and low byte with this formula to get value
    return val* valMultiplier;
}
