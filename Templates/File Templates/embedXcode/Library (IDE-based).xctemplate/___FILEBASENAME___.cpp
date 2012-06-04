//
//  ___FILENAME___ 
//  Library C++ code
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
