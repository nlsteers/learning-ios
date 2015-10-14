//: Playground - noun: a place where people can play

import UIKit

//strings

var str = "Hello, playground"

var name:String = "Nathaniel"

print("Hello " + name + ".")

//integers

var int:Int = 23

int = int / 2

int = int * 5

var int2:Int = 7

print(int2 * int)

print("The value of int is \(int)")

//doubles

var number:Double = 8.4

print(number * Double(int))

//booleans

var isMale:Bool = true


var doublenumber:Double = 5.5

var intnumber:Int = 5

print("The product of \(doublenumber) and \(intnumber) is \(doublenumber * Double(intnumber))")

//arrays

var array = [17,25,13,47]

print(array[0])

print(array[2])

print(array.count)

array.append(60)

array.removeAtIndex(3)

print(array)

array.sort()

var newArray = [5,10,15]

newArray.removeAtIndex(1)

newArray.append(newArray[0] * newArray[1])

print(newArray)

//dictionaries

var dictionary = ["Computer": "A place to practice programming", "Coffee": "Keeps me alive"]

print(dictionary["Coffee"])
print(dictionary["Coffee"]!)

print(dictionary.count)

dictionary["Pen"] = "Something to write with"

dictionary.removeValueForKey("Coffee")

print(dictionary)


var menu = ["BLT": 6, "Eggs Benedict": 9, "Orange Juice": 3]

var totalCost = menu["BLT"]! + menu["Eggs Benedict"]! + menu["Orange Juice"]!

print("The total cost of the menu is £\(totalCost)")


//conditionals

var age = 23

if age >= 18{
    
    print("true")
    
} else {
    
    print("false")

}


var user = "Kirsten"

if user == "Nathaniel" {

    print("Welcome back " + user)
    
} else {
    
    print("Sorry " + user + ", please login as a user with the correct rights")
}


if user == "Kirsten" && age > 18 {
    
    print("User: " + user + " is over 18.")
}

user = "Nathaniel"


if user == "Nathaniel" || user == "Kirsten" {
    
    print("Welcome " + user)
}

if isMale {
    print("Gender: Male")
}


var username = "nlsteers"

var password = "p4ssw0rd"

if username == "nlsteers" && password == "p4ssw0rd" {
    
    print("Welcome back " + username)
    
}  else if password != "p4ssw0rd" && username != "nlsteers"{
    
    print("Incorrect username and password")
    
}  else if username != "nlsteers" {
    
    print("Incorrect username")
    
}  else if password != "p4ssw0rd" {
    
    print("Incorrect password")
    
}




















