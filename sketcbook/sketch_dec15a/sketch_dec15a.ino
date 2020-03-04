#include <EnableInterrupt.h>

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  setRCInterrupts();
}
#define interruptPin A9

void intCH1() {
  Serial.println("OOF");
  //interruptCH(RC_1, RC_PIN_1);
}

void setRCInterrupts() {
  pinMode(interruptPin, INPUT);
  enableInterrupt(interruptPin, intCH1, CHANGE);
}

void loop() {
  // put your main code here, to run repeatedly:
  //Serial.println(digitalRead(RC_PIN_1));
}

void interruptCH(uint8_t channel, uint8_t pin){
  Serial.println(pin + String(" Interrupted"));
}
