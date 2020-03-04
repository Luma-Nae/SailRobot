
#include <EnableInterrupt.h>

void setup() {
  // put your setup code here, to run once:
Serial.begin(115200);


pinMode(A8, INPUT);
/*
pinMode(A11, INPUT);
pinMode(A13, INPUT);
*/

}

void loop() {
  // put your main code here, to run repeatedly:
 // int A_nine = analogRead(A9);
//int A_e = analogRead(A11);
//int A_t = analogRead(A13);
 enableInterrupt(A8, wtf, CHANGE);
  //attachInterrupt(A11, lol, CHANGE);
   //attachInterrupt(A13, meh, CHANGE);
//Serial.clear();
/*
  Serial.println("A9: " + String(A_nine));
  Serial.println("A11: " + String(A_e));
  Serial.println("A13: " + String(A_t));
  */

//delay(1000);

if (digitalRead(A9) == HIGH) {
    rc_start[1] = micros();
  } else {
    uint16_t rc_compare = (uint16_t)(micros() - rc_start[channel]);
    rc_values[channel] = rc_compare;
  }

print

}

void wtf(){
  Serial.println(
  Serial.println("LLOLOLOL");
  }
  void lol(){
  Serial.println("23232323");
  }
  void meh(){
  Serial.println("4546456456");
  }
