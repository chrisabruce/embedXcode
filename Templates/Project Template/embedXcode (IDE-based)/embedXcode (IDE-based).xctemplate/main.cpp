//
// ___FILENAME___ 
// Main file
// ----------------------------------
// Developed with embedXcode 
// http://embedXcode.weebly.com
//
// Project ___PROJECTNAME___
//
// Created by ___FULLUSERNAME___, ___DATE___ ___TIME___
// ___ORGANIZATIONNAME___
//	
//
// Copyright © ___FULLUSERNAME___, ___YEAR___
// Licence CC = BY NC SA
//
// See ___PACKAGENAME___.pde and ReadMe.txt for references
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
#else // error
#error Platform not defined
#endif


// Sketch
#include "___PACKAGENAME___.pde"

int main(void)
{
 #if defined(__AVR_ATmega644P__) // Wiring specific
    boardInit();
#else    
    init();
#endif

    setup();
    for (;;) loop();
    return 0;
}
