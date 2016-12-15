//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, monkey"

var newString = str + " chops"

for char in newString.characters {
    print(char)
}

let newTypeString = NSString(string: newString)

//First 5 char
newTypeString.substring(to: 5)

//From Int to the end
newTypeString.substring(from: 5)

//Get 'monkey'
NSString(string: newTypeString.substring(from: 7)).substring(to: 4)