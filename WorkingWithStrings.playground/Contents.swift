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
NSString(string: newTypeString.substring(from: 7)).substring(to: 6)

newTypeString.substring(with: NSRange(location: 7, length: 6))

if newTypeString.contains("monkey") {
    print("newTypeString contains Monkey!")
}

//into words
newTypeString.components(separatedBy: " ")

newTypeString.lowercased
newTypeString.uppercased
newTypeString.capitalized
