//
//  ___FILENAME___
//  Sketch 
//  ----------------------------------
//  Developed with embedXcode
//
//  Project ___PROJECTNAME___
//  Created by ___FULLUSERNAME___ on ___DATE___
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___
//  Licence CC = BY SA NC
//


// Core library - IDE-based
#if defined(WIRING) // Wiring specific
#include "Wiring.h"
#elif defined(MAPLE_IDE) // Maple specific
#include "WProgram.h"   
#elif defined(MPIDE) // chipKIT specific
#include "WProgram.h"
#elif defined(ENERGIA) // LaunchPad specific
#include "Energia.h"
#elif defined(ARDUINO) && (ARDUINO >= 100) // Arduino 1.0 specific
#include "Arduino.h"
#elif defined(ARDUINO) && (ARDUINO < 100) // Arduino 23 specific
#include "WProgram.h"
#endif


// Include application, user and local libraries
#include "LocalLibrary.h"


// Define variables and constants
#if defined(WIRING) // Wiring specific
const uint8 LED1 = 15; 
#elif defined(MAPLE_IDE) // Maple specific
const uint8_t LED1 = BOARD_LED_PIN; 
#elif defined(MPIDE) // chipKIT specific
const uint8_t LED1 = 13;
#elif defined(ENERGIA) // LaunchPad specific
const uint8_t LED1 = 2; 
#elif defined(ARDUINO) // Arduino specific
const uint8_t LED1 = 13; 
#include "WProgram.h"
#endif


// Add setup code 
void setup() {   
    pinMode(LED1, OUTPUT);     
}


// Add loop code 
void loop() {
    digitalWrite(LED1, HIGH);   // set the LED on
    delay(333);               
    digitalWrite(LED1, LOW);    // set the LED off
    delay(333);              
}
