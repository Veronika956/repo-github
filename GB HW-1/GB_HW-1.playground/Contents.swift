import UIKit

//1
//ax2 + bx + c = 0
let a:Float = 3
let b:Float = 13
let c:Float = 10
//D = b2 -4ac
let d = pow(b,2)-4*a*c
let x1 = (-b-sqrt(d))/(2*a)
let x2 = (-b+sqrt(d))/(2*a)
print (" №1 \n 3x2 + 13x + 10 = 0 \n x1= \(x1) \n x2= \(x2) \n")
//2

let kat:Float = 5
let kat2:Float = 4

let gip = sqrt(pow(kat,2)+pow(kat2,2))
let s = kat*kat2/2
let p = kat+kat2+gip
print (" №2 \n Hypotenuse = \(gip) \n S = \(s) \n P = \(p) \n")
//3
var sum:Float = 100
var percent:Float = 15
var years = 5

sum = sum + percent/100*sum
sum = sum + percent/100*sum
sum = sum + percent/100*sum
sum = sum + percent/100*sum
sum = sum + percent/100*sum
print (" №3 \n In \(years) years the amount of deposit will be \(sum)$")
