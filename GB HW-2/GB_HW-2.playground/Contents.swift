import UIKit

var array  = [1,2,3,4,5,6,7,8,9,10]

//1
func even (n: Int, note: String) {
    for element in array {
        if element % n == 0 {
            print("\(element) \(note)")
        } else {
            print("\(element) нет ")
        }
    }
}

even (n: 2, note: "четное" )

//2
even (n: 3, note: "делится на 3 без остатка")
    
//3
var newArray  = Array(1...100)

/*
var numbers = [Int]()
var a = 0

    while a < 100 {
    a += 1
    numbers.append(a)
}*/


//4
var notEven = newArray.filter { $0 % 2 != 0}
var c = notEven.filter { $0 % 3 != 0}
print (c)

//5
func fibbonachi(_ n: Int) -> Int{
     
    if n == 0{
         
        return 0
    }
    else if n == 1{
         
        return 1
    }
    return fibbonachi(n-1) + fibbonachi(n-2)
}

var numbers = [Int] ()
var z = fibbonachi(0)
var l = 1
while numbers.count < 25 {
    z = fibbonachi(l)
    numbers.append(z)
    l += 1
}
print ("Массив Фибоначчи\(numbers)")

 //6
func isPrime(_ number: Int) -> Bool {
return number > 1 && !(2..<number).contains { number % $0 == 0 }
}

var mumber = [Int]()

var i = 0
while mumber.count < 100 {
    if isPrime(i) == true {
        mumber.append(i)
        i += 1
    } else {
        i += 1
        isPrime(i)
    }
}
print ("Массив простых чисел \(mumber)")
