//: Playground - noun: a place where people can play

import UIKit

let array = [23, 45, 654, 1, 56]

for num in array {
    print(num)
}

let nameArr = ["Tom", "Dick", "Harry"]

for name in nameArr {
    print("Hi there \(name)")
}

var nums = [7, 2, 9, 4, 1 ]

for (index, value) in nums.enumerated() {
    
    nums[index] += 1
    
}

var array1 = [Double]()
array1 = [8, 7, 19, 28]

for (index, value) in array1.enumerated() {
    
    array1[index] = value / 2
}

print(array1)



