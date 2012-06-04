//
//  ___FILENAME___ 
//  Class Library header
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
#include "Arduino.h" // for Arduino 1.0
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
#endif


#ifndef ___FILEBASENAMEASIDENTIFIER_______FILEEXTENSION___
#define ___FILEBASENAMEASIDENTIFIER_______FILEEXTENSION___

class ___FILEBASENAMEASIDENTIFIER___ {
public:
    ___FILEBASENAMEASIDENTIFIER___();
    void begin();
    String WhoAmI();
    void set(uint8_t data);
    uint8_t get();
    
private:    
    uint8_t _data;
};

#endif
