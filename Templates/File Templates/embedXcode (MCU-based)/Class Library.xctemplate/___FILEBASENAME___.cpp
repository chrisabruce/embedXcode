//
// ___FILENAME___ 
// Class library C++ code
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
// See ___FILEBASENAME___.h and ReadMe.txt for references
//


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

