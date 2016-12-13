//: Playground - noun: a place where people can play

import UIKit

//var i = 1
//
//while i <= 10 {
//    
//    print(i)
//    i += 1
//}


//1. First 20 nums in 7 times table
//var a = 1
//
//while a <= 20 {
//    
//    print(a * 7)
//    a += 1
//    
//}

//2. Add one to each value in array
//var i = 0

//var array = [7, 23, 98, 1, 0, 763]
//
//array.count
//
//while i < array.count {
//    //array[i] = array[i] + 1
//    
//    array[i] += 1
//    i += 1
//}
//print(array)


let number = 1
var isPrime = true
var i = 2

if number == 1 {
    isPrime = false
}

while i < number {
    
        if number % i == 0 {
            isPrime = false
        }
    
        i += 1
    
}

print(isPrime)





















