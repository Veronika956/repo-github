import UIKit

var array  = Array(1...100)

//1
func isDevidable (number: Int, by: Int) -> Bool {
    return number % by == 0
}
isDevidable(number: 9 , by: 3)

// var 2
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
var c = newArray.filter { $0 % 2 != 0 &&  $0 % 3 == 0}
print (c)
//
/*var index = 0
while index < array.count {
    if array[index] % 2 == 0 || array[index] % 3 != 0{
        array.remove(at: index)
        index -= 1
    }
    index += 1
}
print (array)*/
//5
/*func fibbonachi(_ n: Int) -> Int{
     
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
print ("Массив Фибоначчи\(numbers)")*/
//
func fiboArray(index: Int) -> [Int] {
    var farray = [0,1]
    for index in 2..<index {
        farray.append(farray[index-2] + farray[index-1])
    }
    return farray
    
}
print(fiboArray(index: 50))

 //6
func isPrime(_ number: Int) -> Bool {
return number > 1 && !(2..<number).contains { number % $0 == 0 }
}

var mumber = [Int]()

var i = 0
while i < 100 {
    if isPrime(i) == true {
        mumber.append(i)
        i += 1
    } else {
        i += 1
        isPrime(i)
    }
}
print ("Массив простых чисел \(mumber)")

//

/*var set = Set(2...100)

for value in set {
    var indx = 2
    while value * indx <= 100 {
        set.remove(value * indx)
        indx += 1
    }
    indx = 2
}
 print (set)*/
