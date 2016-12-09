//: Playground - noun: a place where people can play

import UIKit

                    //Array

var array = [34, 35, 36, 37]

print(array[0])

array.append(38) //add to end
array.remove(at: 1)
array.removeFirst()
array.removeLast()
//array.removeAll()

 var arr = [3.87, 7.1, 8.9]

arr.remove(at: 1)
arr.append(arr[0]*arr[1])

let mixArr = ["Tom", 87, false, 42.333] as [Any]

let stringArray = [String]()


                    //Dictionary

var dictionary = ["Key": "value", "Computer": "fun machine", "Donkey": "fun ride"]


dictionary["Computer"]!
dictionary["fun machine"] //doesn't work in reverse
dictionary.count
dictionary.description
dictionary.endIndex
dictionary["Pen"] = "fun stick" //adds
dictionary.removeValue(forKey: "Computer")
print(dictionary)

var gameDict = [String: Double]()
gameDict["Ghost"] = 45.2

//Decimal number type is most accuate 

let menuDict = ["Pizza": 10.99, "IceCream": 7.99, "Salad": 7.99]

print("The total cost of my meal is \(menuDict["Pizza"]! + menuDict["IceCream"]!)")
























