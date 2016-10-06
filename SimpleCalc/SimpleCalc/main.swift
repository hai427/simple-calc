//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 10/5/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

print("Welcome to the SimpleCalc! Enter a command:")

var programRunning : Bool = true

while(programRunning) {
    
    var input = readLine(strippingNewline: true)!
    var inputArray = input.components(separatedBy: " ")
    
    if inputArray.count == 1{
        var firstInput = inputArray[0]
        var operation: String = readLine()!
        var secondInput = (readLine()!)
        if Double (firstInput) != nil && Double (secondInput) != nil {
            switch operation {
            case "+":
                print(Double (firstInput)! + Double (secondInput)!)
            case "-":
                print(Double (firstInput)! - Double (secondInput)!)
            case "/":
                print(Double (firstInput)! / Double (secondInput)!)
            case "*":
                print(Double (firstInput)! * Double (secondInput)!)
            case "%":
                print(Double (firstInput)!.truncatingRemainder(dividingBy: Double (secondInput)!))
            default:
                print("Invalid operation")
            }
        } else {
            print("Please enter valid numbers")
        }
    } else {
        switch inputArray[inputArray.count - 1] {
            case "count":
                print(inputArray.count - 1)
            case "avg":
                var total : Double = 0.0;
                for number in inputArray {
                    if Double (number) != nil{
                        total += Double (number)!
                    }
                }
                print (total/Double (inputArray.count - 1))
            case "fact":
                var total = 1
                var factorial : Int = Int (inputArray[0])!
                if factorial == 0 {
                    print (total)
                } else if factorial < 0 {
                    print ("Factorial does not exist for negative numbers! (Kinda)")
                } else {
                    for integer in 1...factorial {
                        total *= integer
                    }
                    print (total);
                }
            default:
                print("Invalid operation")
        }
    }
}
