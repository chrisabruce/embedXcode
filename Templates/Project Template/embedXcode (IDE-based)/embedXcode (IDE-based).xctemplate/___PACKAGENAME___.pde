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
#if defined(WIRING) // Wiring specific - official
#include "Wiring.h"
#elif defined(MAPLE_IDE) // Maple specific - official
#include "WProgram.h"   
#elif defined(MPIDE) // chipKIT specific - embedXcode only
#include "WProgram.h"
#elif defined(ENERGIA) // LaunchPad specific - embedXcode only
#include "Energia.h"
#elif defined(ARDUINO) && (ARDUINO >= 100) // Arduino 1.0 specific - official
#include "Arduino.h"
#elif defined(ARDUINO) && (ARDUINO < 100) // Arduino 23 specific - official
#include "WProgram.h"
#endif


// Include application, user and local libraries
#include "LocalLibrary.h"

// Define variables and constants
#if defined(__AVR_ATmega328P__) || defined(__AVR_ATmega2560__) // Arduino specific
const uint8_t LED1 = 13; 
#elif defined(__PIC32MX__) // chipKIT specific
const uint8_t LED1 = 13;
#elif defined(__AVR_ATmega644P__) // Wiring specific
const uint8 LED1 = 15; 
#elif defined(__MSP430G2452__) || defined(__MSP430G2553__) || defined(__MSP430G2231__) // LaunchPad specific
const uint8_t LED1 = 2; 
#elif defined(MCU_STM32F103RB) || defined(MCU_STM32F103ZE) || defined(MCU_STM32F103CB) || defined(MCU_STM32F103RE) // Maple specific
const uint8_t LED1 = BOARD_LED_PIN; 
#endif

// Add setup code 
void setup() {   
    pinMode(LED1, OUTPUT);     
}

// Add loop code 
void loop() {
    digitalWrite(LED1, HIGH);   // set the LED on
    delay(333);                // wait for a second
    digitalWrite(LED1, LOW);    // set the LED off
    delay(333);              
}
