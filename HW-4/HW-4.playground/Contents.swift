import UIKit

let age = "30"
let color = "grey"
let weather = "winter"
let time = "13pm"
let money = "50"

var convAge = Int(age)
var convColor = Int(color)
var convWeather = Int(weather)
var convTime = Int(time)
var convMoney = Int(money)

var sum :Int = 0

if convAge != nil {
    sum += convAge!
}

if convColor != nil {
    sum += convColor!
}

if convWeather != nil {
   sum += convWeather!
}

if convTime != nil {
  sum += convTime!
}

if convMoney != nil {
    sum += convMoney!
}

print ("Сумма = \(sum)")

//2
var serverResponse : (statusCode: Int, message: String?, errorMessage: String? )
serverResponse.statusCode = 202
serverResponse.message = "Connected"
serverResponse.errorMessage = "Error"

if serverResponse.statusCode >= 200 && serverResponse.statusCode < 300 {
    print ("\(serverResponse.message)")
} else {
    print("\(serverResponse.errorMessage)")
}

//3

var student1 : (name: String?, car: String?, mark: Int? )
var student2 : (name: String?, car: String?, mark: Int? )
var student3 : (name: String?, car: String?, mark: Int? )
var student4 : (name: String?, car: String?, mark: Int? )
var student5 : (name: String?, car: String?, mark: Int? )

student1.name = "Tinky Winky"
student1.mark = 5

student2.name = "Dipsy"
student2.car = "15MN43d"
student2.mark = 5

student3.name = "Laa-Laa"
student3.car = "62KG98n"
student3.mark = 2

student4.name = "Po"
student1.mark = 4

student5.name = "Sun"


if student1.car != nil {
    print("\n\(student1.name!) has car with number \(student1.car!). ")
} else {
    print("\n\(student1.name!) has no car. ")
}
if (student1.mark != nil) {
    print("Also Student get \(student1.mark!) on exam. ")
} else {
    print("Student missed last exem. ")
}

if student2.car != nil {
    print("\n\(student2.name!) has car with number \(student2.car!). ")
} else {
    print("\n\(student2.name!) has no car. ")
}
if (student2.mark != nil) {
    print("Also Student get \(student2.mark!) on exam. ")
} else {
    print("Student missed last exem. ")
}

if student3.car != nil {
    print("\n\(student3.name!) has car with number \(student3.car!). ")
} else {
    print("\n\(student3.name!) has no car. ")
}
if (student3.mark != nil) {
    print("Also Student get \(student3.mark!) on exam. ")
} else {
    print("Student missed last exem. ")
}

if student4.car != nil {
    print("\n\(student4.name!) has car with number \(student4.car!). ")
} else {
    print("\n\(student4.name!) has no car. ")
}
if (student4.mark != nil) {
    print("Also Student get \(student4.mark!) on exam. ")
} else {
    print("Student missed last exem. ")
}

if student5.car != nil {
    print("\n\(student5.name!) has car with number \(student5.car!). ")
} else {
    print("\n\(student5.name!) has no car. ")
}
if (student5.mark != nil) {
    print("Also Student get \(student5.mark!) on exam. ")
} else {
    print("Student missed last exem. ")
}
