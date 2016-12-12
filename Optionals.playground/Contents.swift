//: Playground - noun: a place where people can play

import UIKit

                    //Optionals

//Not specifying a value BUT errors occurs if I try and call it
var number: Int

//Calling an optional allows for var to be called with OR without value
var number2: Int?


//example
let userEnteredText = "3"
let userEnteredText2 = "three"

let userEnteredInteger = Int(userEnteredText)
let userEnteredInteger2 = Int(userEnteredText2) //gives nil

//needs an '!' to ensure it works
let catAge = userEnteredInteger! * 7

//Does not work "let catAge2 = userEnteredInteger2 * 7" so we have to use an 'if let' structure 
//if (as a value) it will run but NO error if not
if let catAge2 = userEnteredInteger2 {
    print (catAge2 * 7)
}

