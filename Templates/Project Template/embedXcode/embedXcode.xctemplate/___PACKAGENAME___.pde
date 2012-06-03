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

// Core library - MCU-based
#if defined (__AVR_ATmega328P__) || defined (__AVR_ATmega2560__) // Arduino specific
  #if defined(ARDUINO) && (ARDUINO >= 100)
  #include "arduino.h" // for Arduino 1.0
  #else
  #include "WProgram.h" // for Arduino 23
  #endif
#elif defined(__32MX320F128H__) || defined(__32MX795F512L__) // chipKIT specific 
#include "WProgram.h"
#elif defined(__AVR_ATmega644P__) // Wiring specific
#include "Wiring.h"
#elif defined(__MSP430G2452__) || defined(__MSP430G2553__) || defined(__MSP430G2231__) // LaunchPad specific
#include "Energia.h"
#elif defined(MCU_STM32F103RB) || defined(MCU_STM32F103ZE) || defined(MCU_STM32F103CB) || defined(MCU_STM32F103RE) // Maple specific
#include "WProgram.h"	
#else // error
#error Platform not defined
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
