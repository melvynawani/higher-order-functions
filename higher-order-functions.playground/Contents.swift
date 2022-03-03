import UIKit
import Foundation

var greeting = "Hello, playground"

// Assignment
/*
 1. Map takes ot a value from its container and transforms it using the code specified while Compact map does the same as map while unwrapping any optional returnerd as well as discards all nil values
 
 2. Reduce iterates over all items in an array combining them together somehow until you end up with a single value
 
 3. Sort carries out the process on the original array while Sorted assigns the sorted array to a new variable
 
 4. Filter higher order function is used to return values in an array that meet a specified condition
 
 5. Higher order functions can be defined as pre-defined functions that take other functions or closures as arguments and that return a function or closure.
 */

struct Employee{
    let firstName: String
    let lastName: String
    
}

var employees = [Employee]()
let e1 = Employee(firstName: "Tommy", lastName: "Woods")
let e2 = Employee(firstName: "Tony", lastName: "Winds")
let e3 = Employee(firstName: "Tammy", lastName: "Water")
let e4 = Employee(firstName: "Danny", lastName: "Welbeck")
let e5 = Employee(firstName: "Johnny", lastName: "Depp")

employees = [e1, e2, e3, e4, e5]
let x = employees.reduce(""){partialResult, employee in "\(partialResult) \(employee)"}
print(x)

let reduceUsage = employees.reduce("") {partialResult, employee in
    return partialResult + employee.firstName + " " + employee.lastName + " "
}
print(reduceUsage)

