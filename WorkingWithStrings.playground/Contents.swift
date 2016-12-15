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


var name = "San Francisco"
name.trimmingCharacters(in: .whitespaces)

name.replacingOccurrences(of: " ", with: "-").capitalized

                            //REALLY IMPORTANT!!!!

//ADD ' \ ' to allow for "
var searchLocationData = "</div></a><p class=\"summary\"><b>London 1 &ndash; 3 Day Weather Forecast Summary:</b><span class=\"read-more-small\"><span class=\"read-more-content\"> <span class=\"phrase\">Mostly dry. Mild temperatures (max 10&deg;C on Thu morning, min 5&deg;C on Wed night). Winds decreasing (fresh winds from the SSE on Wed night, calm by Fri night).</span>"


var new = searchLocationData.components(separatedBy: "phrase\">")
print(new)

var final = new[1].components(separatedBy: "</span>")
print(final[0])











