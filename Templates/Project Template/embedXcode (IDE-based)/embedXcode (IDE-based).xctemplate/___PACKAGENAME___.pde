/// 
/// @mainpage	___PROJECTNAME___ 
/// @details	<#details#>
/// @n 
/// @n 
/// @n @a	Developed with [embedXcode](http://embedXcode.weebly.com)
/// 
/// @author	___FULLUSERNAME___
/// @author	___ORGANIZATIONNAME___
/// @date	___DATE___ ___TIME___
/// @version	<#version#>
/// 
/// @copyright	© ___FULLUSERNAME___, ___YEAR___
/// @copyright	CC = BY NC SA
///
/// @see	ReadMe.txt for references
///


///
/// @file	___FILENAME___ 
/// @brief	Main sketch
/// @details	<#details#>
/// @n @a	Developed with [embedXcode](http://embedXcode.weebly.com)
/// 
/// @author	___FULLUSERNAME___
/// @author	___ORGANIZATIONNAME___
/// @date	___DATE___ ___TIME___
/// @version	<#version#>
/// 
/// @copyright	© ___FULLUSERNAME___, ___YEAR___
/// @copyright	CC = BY NC SA
///
/// @see	ReadMe.txt for references
/// @n
///


// Core library - MCU-based
#if defined (__AVR_ATmega328P__) || defined (__AVR_ATmega2560__) || defined(__AVR_ATmega32U4__) // Arduino specific
  #if defined(ARDUINO) && (ARDUINO >= 100)
  #include "Arduino.h" // for Arduino 1.0
  #else
  #include "WProgram.h" // for Arduino 23
  #endif
#elif defined(__32MX320F128H__) || defined(__32MX795F512L__) // chipKIT specific 
#include "WProgram.h"
#elif defined(__AVR_ATmega644P__) // Wiring specific
#include "Wiring.h"
#elif defined(__MSP430G2452__) || defined(__MSP430G2553__) || defined(__MSP430G2231__) || defined(__MSP430FR5739__) // LaunchPad specific
#include "Energia.h"
#elif defined(MCU_STM32F103RB) || defined(MCU_STM32F103ZE) || defined(MCU_STM32F103CB) || defined(MCU_STM32F103RE) // Maple specific
#include "WProgram.h"	
#else // error
#error Platform not defined
#endif

// Include application, user and local libraries
#include "LocalLibrary.h"

// Define variables and constants
///
/// @brief	Name of the LED
/// @details	Each board has a LED but connected to a different pin
///
uint8_t myLED;


///
/// @brief	Setup
/// @details	Define the pin the LED is connected to
///
// Add setup code 
void setup() {
  // myLED pin number
#if defined(__AVR_ATmega328P__) || defined(__AVR_ATmega2560__) || defined(__AVR_ATmega32U4__) // Arduino specific 
  myLED = 13; 
#elif defined(__PIC32MX__) // chipKIT specific
  myLED = 13;
#elif defined(__AVR_ATmega644P__) // Wiring specific
  myLED = 15; 
#elif defined(__MSP430G2452__) || defined(__MSP430G2553__) || defined(__MSP430G2231__) || defined(__MSP430FR5739__) // LaunchPad specific
  myLED = RED_LED; 
#elif defined(MCU_STM32F103RB) || defined(MCU_STM32F103ZE) || defined(MCU_STM32F103CB) || defined(MCU_STM32F103RE) // Maple specific
  myLED = BOARD_LED_PIN; 
#endif

  pinMode(myLED, OUTPUT);     
}

///
/// @brief	Loop
/// @details	Call blink
///
// Add loop code 
void loop() {
  blink(myLED, 3, 333);
  delay(1000);    
}
