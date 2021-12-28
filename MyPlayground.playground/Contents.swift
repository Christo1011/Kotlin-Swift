//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = "Hello Swift"
let constStr = str
var nextYear: Int
var bodyTemp: Float
var hasPet: Bool
//Array
var arrayofInts: Array<Int>
//Array shortcut
var arrayOfInts: [Int]
//Dictionary - unique, must be able to be hash
var dictionaryOfCApitalsByCountry: Dictionary<String, String>
//Dictionary shortcut
var dictionaryOfCApitalsByCountrys: [String:String]
//Set
var winningLotteryNumbers: Set<Int>
//Literals and subscripting
let number = 42
let fmStation = 91.1
//Literal Arrays and Dictionaries
let countingUp = ["one", "two"]
let nameByParkingSpace = [13: "Alice", 27: "Bob"]
//Retrieve Array element - Subscripting
let secondElement = countingUp[1]
//Initializers
let emptyString = String()
let emptyArray = [Int]()
let emptySetOfFloats = Set<Float>()
//Initializers that have default values
let defaultNumber = Int()
let defaultBool = Bool()
//Types that can have multiple Initializers
let number1 = 42
let meaningOfLife = String(number1)
//Set initializers -> accepts an array of literals
let availableRooms = Set([205,411,412])
//Float has multiple Initializers
let defaultFloat = Float()
let floatFromLiteral = Float(3.14)
//Float type inference defaults to double
let easyPi = 3.14
//Use Float initializer that accepts Double to create Float from this Double
let FloatFromDouble = Float(easyPi)
//Can achieve same results by specifing type in the declaration
let floatingPi: Float = 3.14
//property is a value associated with the instance of a type
countingUp.count
emptyString.isEmpty
//instance method is a function that is specific to a particular type and can be called on an instance of that type
var countingUps = ["one","two"]
countingUps.append("three")
//Optionals which is indicated by appending '?' to a type name
var anotherOptionalFloat: Float?
var anotherOptionalArrayOfStrings: [String]?
var anotherOptionalArraOfOptionalStrings: [String?]?
//Optional Example
var reading1: Float?
var reading2: Float?
var reading3: Float?
//Assign Floating points to literals
reading1 = 9.8
reading2 = 9.2
reading3 = 9.7
//Forcibly unwrap an Optional
let avgReadings = (reading1! + reading3! + reading2!) / 3
//Safe way to unwrap
if let r1 = reading1, let r2 = reading2, let r3 = reading3{
    let avgRs = (r1 + r2 + r3) / 3
}else{
    let errorString = "Instrument reported a reading that was nil"
}
//Subscribing dictionaries
let space13Assignee: String? = nameByParkingSpace[13]
let space42Assignee: String? = nameByParkingSpace[42]
//If-let Subscribing dictionaries
if let space13Assignees = nameByParkingSpace[13]{
    print("Key 13 is assigned in the dictionary!")
}
//Loops and String Interpolation
let range = 0..<countingUp.count
for i in range{
    let string = countingUp[i]
    //use 'string'
}
for string in countingUp{
    //use 'string'
}
for(i, string) in countingUp.enumerated(){
    //(0, "one"), (1, "two)
}
//Tuples + enomerated
for (space, name) in nameByParkingSpace{
    let permit = "Space \(space): \(name)"
}
//Enumeration + Switch Statement
enum PieType{
    case apple
    case cherry
    case pecan
}
let favoritePie = PieType.apple
let name: String
switch favoritePie {
    case .apple:
        name = "Apple"
    case .cherry:
        name = "Cherry"
    case .pecan:
        name = "Pecan"
}
//Enumerations + Raw values
enum PiesType: Int{
    case apples = 0
    case cherrys
    case pecans
}
let pieRawValue = PiesType.pecans.rawValue //pieRawValues is an Int with a value of 2
//if let piesType == PiesType(rawValue: pieRawValue){
    //Got a valid 'piesType'!
//}


//pg 40 + 43
