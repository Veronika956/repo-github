import UIKit

enum Errors: String, Error{
    case arrayCountIsZero = "Фигур больше не осталось. Добавь еще."
}

protocol Figures {
    var weight: Double {get set}
    func calculatePerimetr() -> Double
}

class Circle: Figures {
    var radius: Double
    var weight: Double
    func calculatePerimetr() -> Double {
        return radius * 2.0 * Double.pi
    }
    init (radius: Double,weight: Double ) {
        self.radius = radius
        self.weight = weight
    }
}
class Rectangle: Figures {
    var sideA: Double
    var sideB: Double
    var weight: Double
    func calculatePerimetr() -> Double  {
         return 2 * sideA + 2 * sideB
    }
    init(sideA:Double, sideB:Double,weight:Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.weight = weight
    }
}
class Queue<U: Figures> {
    var figures: [U] = []
    
    func push(_ figure: U) {
        figures.append(figure)
    }
    
    func pop() throws -> U? {
        guard figures.count > 0 else {throw Errors.arrayCountIsZero }
        return figures.removeFirst()
    }
    
    func totalWeight() throws  -> Double {
        var weight = 0.0
        guard figures.count > 0 else {throw Errors.arrayCountIsZero }
        for figure in figures {
            weight += figure.weight
        }
        return weight
    }
    
    func totalPerimetr() -> Double {
        var totalPerimetr = 0.0
        figures.forEach { totalPerimetr += $0.calculatePerimetr() }
        return totalPerimetr
    }
    
   
   
    subscript(indices: UInt ...) -> Double {
        var weight = 0.0
        
        for index in indices where index < self.figures.count {
            weight += self.figures[Int(index)].weight
        }
        return weight
          
    }
   
}

var queueCircle = Queue<Circle>()
var queueRectangle = Queue<Rectangle>()

queueCircle.push(Circle(radius: 10, weight: 5))
queueCircle.push(Circle(radius: 20, weight: 6))
queueCircle.push(Circle(radius: 30, weight: 7))
queueCircle.push(Circle(radius: 30, weight: 8))

do {
    try queueCircle.totalWeight()
} catch {
    print(Errors.arrayCountIsZero)
}

queueCircle.totalPerimetr()
queueCircle[0]
try queueCircle.pop()
queueCircle[0]
var circle = Circle(radius: 10, weight: 5)
circle.calculatePerimetr()

do {
    try queueCircle.totalWeight()
} catch {
    print(Errors.arrayCountIsZero)
}

do {
    try queueCircle.pop()
    try queueCircle.pop()
    try queueCircle.pop()
    try queueCircle.pop()
    try queueCircle.pop()
} catch {
    print(Errors.arrayCountIsZero)
}
do {
    try queueCircle.totalWeight()
} catch {
    print(Errors.arrayCountIsZero)
}
