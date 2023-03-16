
// Need to run a calibration test before hand
// repository https://github.com/bogde/HX711
//https://docs.arduino.cc/software/ide-v1/tutorials/installing-libraries


#include "HX711.h" //This is library

#define calibration_factor = 0 ; // this can be found by running a callibration test

#define DOUT_PIN =;
#define SCK_PIN =;

HX711 scale;

void setup() {
 Serial.begin(9600);



scale.begin(DOUT_PIN,SCK_PIN);
scale.set_scale(calibration_factor);
scale.tare(); //this is the same as the tare function on a normal scale
 
}

void loop() {
  Serial.print("Reading: ");
  Serial.print(scale.get_units(),1); // this returns a float
  // This currently also prints in pounds


}
