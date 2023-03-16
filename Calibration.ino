

//This file is meant for the calibration test. This file as well as the normal program were
// initially made by modifying code found here:
// https://www.instructables.com/Arduino-Scale-With-5kg-Load-Cell-and-HX711-Amplifi/

#include "HX711.h" //This is the library

#define DOUT_PIN =;
#define SCK_PIN =;

HX711 scale;

float calibration_factor = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

  //This code initializes the scale 
  scale.begin(DOUT_PIN,SCK_PIN);
  scale.set_scale();
  scale.tare(); // set to zero

  long zero_factor = scale.read_average(); // base reading
  
}

void loop() {
  scale.set_scale(calibration_factor);
  Serial.print("Reading: ");
  Serial.print(scale.get_units(),1);
  Serial.print("Calibration: ");
  Serial.print(calibration_factor);
  Serial.println();

  //This is an interesting idea where we take user input and increment/decrement based on the displayed values
  if(Serial.available()) {
    char temp = Serial.read();
    if(temp == 'a')
      calibration_factor += 10;
  } else if(temp == 'z'){
    calibration_factor -= 10;
  }
  

}
