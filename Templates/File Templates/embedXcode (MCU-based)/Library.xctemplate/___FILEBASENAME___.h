///
/// @file	___FILENAME___ 
/// @brief	Library header
/// @details	<#details#>
/// @n	
/// @n @b	Project ___PROJECTNAME___
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



#endif
