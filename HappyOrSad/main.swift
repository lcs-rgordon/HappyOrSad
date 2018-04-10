//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT

// Set the error message to use if bad input found
let errorMessage = "Please enter a string with at least 1 and no more than 255 characters."

// Loop forever until valid input found
var validInput = ""
while true {
    
    // Unwrap the given input from user, make sure it is not nil
    guard let givenInput = readLine() else {
        
        // Report the error then continue to next iteration of loop to prompt again
        print(errorMessage)
        continue
        
    }
    
    // Show the error message if input is not valid
    if givenInput.count < 1 || givenInput.count > 255 {
        
        // Report the error then continue to next iteration of loop to prompt again
        print(errorMessage)
        continue
        
    }
    
    // If we got this far, input is guaranteed to be valid
    validInput = givenInput
    break   // Very important – must exit the loop
    
}

// PROCESS
// Inspect each character of the String named input
var happyCount = 0
var sadCount = 0
for individualCharacter in validInput {
    
    // DEBUG (see what character we are dealing with right now)
    // print(individualCharacter)
    
    // Categorize the character
    switch individualCharacter {
    case "😃", "😊", "🙂", "😄":
        happyCount += 1
    case "☹️", "🙁", "😕", "😔":
        sadCount += 1
    default:
        break   // do nothing if it's any other character
    }
    
}

// OUTPUT
// Tell the user "happy", "sad", or "unsure" based on counts above
if happyCount == 0 && sadCount == 0 {
    print("none")
} else if happyCount == sadCount {
    print("unsure")
} else if happyCount > sadCount {
    print("happy")
} else {
    print("sad")
}
