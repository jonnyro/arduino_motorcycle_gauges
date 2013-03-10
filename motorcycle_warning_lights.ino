

#define OIL_PRESSURE_WARNING_PIN    4
#define NEUTRAL_INDICATOR_PIN       5
#define FI_WARNING_PIN              6
#define WATER_TEMP_WARNING_PIN      7
#define TACHOMETER_PULSE_PIN        2
#define TACHOMETER_INTERRUPT        0 

#include <math.h>

int sequence_id;
int last_oil_pressure_warning;
int last_neutral_indicator;
int last_fi_warning;
int last_water_temp_warning;

int oil_pressure_warning;
int neutral_indicator;
int fi_warning;
int water_temp_warning;


volatile unsigned long last_tach_pulse_time_us;
volatile unsigned long current_tach_pulse_time_us;

void tach_pulse_interrupt_handler()
{
  //Record the time
  last_tach_pulse_time_us = current_tach_pulse_time_us;
  current_tach_pulse_time_us = micros();


}

void setup(){
  //start serial connection
  Serial.begin(9600);
  //configure pin2 as an input and enable the internal pull-up resistor
  pinMode(OIL_PRESSURE_WARNING_PIN,   INPUT_PULLUP);
  pinMode(NEUTRAL_INDICATOR_PIN,      INPUT_PULLUP);
  pinMode(FI_WARNING_PIN,             INPUT_PULLUP);
  pinMode(WATER_TEMP_WARNING_PIN,     INPUT_PULLUP);
  pinMode(TACHOMETER_PULSE_PIN,       INPUT_PULLUP);

  sequence_id = 0;  


  oil_pressure_warning = 0;
  neutral_indicator = 0;
  fi_warning = 0;
  water_temp_warning = 0;

  //Set up initial value for tach pulse time
  last_tach_pulse_time_us = 0l;
  current_tach_pulse_time_us = 0l;  //So that current - last will be negative initially

  //Set up interrupt on falling edge
  attachInterrupt(TACHOMETER_INTERRUPT, tach_pulse_interrupt_handler, FALLING);

}



void loop(){



  //Read available sensors.  Active low
  oil_pressure_warning = ( digitalRead(OIL_PRESSURE_WARNING_PIN) == LOW );
  neutral_indicator    = ( digitalRead(NEUTRAL_INDICATOR_PIN) == LOW );
  fi_warning           = ( digitalRead(FI_WARNING_PIN) == LOW );
  water_temp_warning   = ( digitalRead(WATER_TEMP_WARNING_PIN) == LOW );


  double calculated_tachometer_frequency =  pow((current_tach_pulse_time_us-last_tach_pulse_time_us) / 1000000.0L, -1) ;

  Serial.print("O");
  Serial.print(oil_pressure_warning);

  Serial.print("N");
  Serial.print(neutral_indicator);

  Serial.print("F");
  Serial.print(fi_warning);

  Serial.print("W");
  Serial.print(water_temp_warning);

  Serial.print("T");
  Serial.print(calculated_tachometer_frequency);

  Serial.println(""); //Start new line
}




