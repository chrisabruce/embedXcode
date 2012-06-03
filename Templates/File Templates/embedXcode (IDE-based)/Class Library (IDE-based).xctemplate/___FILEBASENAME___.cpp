//
//  ___FILENAME___ 
//  Class Library C++ code
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


// Library header
#include "___FILEBASENAME___.h"

// Code
___FILEBASENAMEASIDENTIFIER___::___FILEBASENAMEASIDENTIFIER___() {
    
}

void ___FILEBASENAMEASIDENTIFIER___::begin() {
    _data = 0;
}

String ___FILEBASENAMEASIDENTIFIER___::WhoAmI() {
    return "___FILEBASENAMEASIDENTIFIER___";
}

void ___FILEBASENAMEASIDENTIFIER___::set(uint8_t data) {
    _data = data;
}

uint8_t ___FILEBASENAMEASIDENTIFIER___::get() {
    return _data; 
}

