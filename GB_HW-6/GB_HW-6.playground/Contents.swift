import UIKit

protocol Weightable {
    
    var weight: Double {get set}
    func calculatePerimetr() -> Double
}

class Circle: Weightable {
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
class Rectangle: Weightable {
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
class Queue<U: Weightable> {
    var figures: [U] = []
    
    func push(_ figure: U) {
        figures.append(figure)
    }
    
    func pop() -> U? {
        guard figures.count > 0 else {return nil}
        return figures.removeFirst()
    }
    
    func totalWeight() -> Double {
        var weight = 0.0
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
queueCircle.totalWeight()
queueCircle.totalPerimetr()
queueCircle[0]
queueCircle.pop()
queueCircle[0]
var circle = Circle(radius: 10, weight: 5)
circle.calculatePerimetr()
queueCircle.totalWeight()

