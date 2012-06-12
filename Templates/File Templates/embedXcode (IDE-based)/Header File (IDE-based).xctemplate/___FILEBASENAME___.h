///
/// @file	___FILENAME___ 
/// @brief	Header
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


#ifndef ___FILEBASENAMEASIDENTIFIER_______FILEEXTENSION___
#define ___FILEBASENAMEASIDENTIFIER_______FILEEXTENSION___



#endif
