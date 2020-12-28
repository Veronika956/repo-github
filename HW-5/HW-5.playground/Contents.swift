import UIKit

//1

let bday = 28
let month = 4

let day = 60 * 60 * 24
let (jan, mar, feb) = (31, 31, 28)
let seconds = day * jan + day * feb + day * mar + day * (bday - 1)
print ("My B-day will be in \(seconds) seconds after the turn of 2021")

//2
if month >= 1 && month <= 3 {
    print("My B-day is in the first quarter")
} else if  month >= 4 && month <= 6 {
    print("My B-day is in the second quarter")
} else if  month >= 7 && month <= 9 {
    print("My B-day is in the third quarter")
} else if  month >= 10 && month <= 12 {
    print("My B-day is in the forth quarter")
}

//3 ++a --a были удалены

var i = 5
    i += 1
    i -= 4

//4 используя только цифры
var x = 2
var y = 4

if (x%2 == 0 && y%2 == 0) || (x%2 != 0 && y%2 != 0){
    print ("(\(x),\(y)) is black")
} else {
    print ("(\(x),\(y)) is white")
}

//4 Variant 2 используя цифры и буквы
var a = 8
var b = "g"

if (a%2 == 0 && (b == "b" || b == "d" || b == "f" || b == "h")) || (a%2 != 0 && (b == "a" || b == "c" || b == "e" || b == "g")){
    print ("(\(a),\(b)) is black")
} else {
    print ("(\(a),\(b)) is white")
}
