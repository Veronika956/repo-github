import UIKit

enum CarWindowState {
    case open, close
}

enum CarEngineState {
    case turnedOn, turnedOff
}
enum CarColor {
    case red, black, silver, cherryMetallic, cyberOrange, diamondSky
}

enum CarActions {
    case setEngineState (CarEngineState)
    case setWindowState (CarWindowState)
    case upgradePower (Int)
    case changeColor (CarColor)
}

enum Mark {
    case Choose, Cadillac,Porche, Dodge, MAN, TGL
}

enum RaceType {
    case choose, rallying, stock, touring, sports, oneMake, timeAttack
}
enum RaceCountry {
    case choose, Monaco,Japan, Germany, France, UAE
}

enum RaceActions {
    case mark (Mark)
    case type (RaceType)
    case country (RaceCountry)
}

class Car {
    var mark: Mark
    let age: Int
    var power: Int
    
    
    init (mark: Mark, age: Int, power : Int){
        self.mark = mark
        self.age = age
        self.power = power
    }
    
    func describtion () {
        print(self.mark, self.age, self.power)
    }
}

class SportCar: Car {
    var seatingCapacity: Int
    var windowState: CarWindowState
    var engineState: CarEngineState
    var color: CarColor
    var country: RaceCountry
    var type: RaceType

    init (mark: Mark, age: Int, power: Int, seatingCapacity: Int, windowState:CarWindowState, engineState: CarEngineState, color: CarColor, country: RaceCountry, type: RaceType){
        self.engineState = engineState
        self.seatingCapacity = seatingCapacity
        self.windowState = windowState
        self.color = color
        self.country = country
        self.type = type
        super.init (mark: mark, age: age, power: power)
    }
    
    func makeCarAction (action : CarActions) {
        
        switch action {
        case .setEngineState(let engine):
            self.engineState = engine
        case .setWindowState(let window):
            self.windowState = window
        case .upgradePower(let power):
            self.power += power
        case .changeColor(let color):
            self.color = color
        }
        
    }
    
    func startRace (action: RaceActions) {
        
        switch action {
        case .country (let country):
            self.country = country
        case .type (let type):
            self.type = type
        case .mark (let  mark):
            self.mark = mark
        }

    }
    
    override func describtion () {
        super.describtion()
        print( self.seatingCapacity, self.windowState, self.engineState, self.color)
        print ("\(self.mark) is starting race - \(self.type) in \(self.country)")
    }
}
    
var car = SportCar (mark: .Choose, age: 2021 , power: 0, seatingCapacity: 2, windowState:.open, engineState: .turnedOff, color : .black, country: .choose, type: .choose)

car.makeCarAction(action: .setWindowState(.close))
car.makeCarAction(action: .changeColor(.cherryMetallic))
car.startRace(action: .country(.Monaco))
car.startRace(action: .mark(.Porche))
car.startRace(action: .type(.touring))
car.makeCarAction(action: .upgradePower(250))
car.describtion()



enum TruckWindowState {
    case open, close
}

enum TruckEngineState {
    case turnedOn, turnedOff
}

enum TruckTransmission {
    case mechanical, auto
}

enum TruckActions {
    case load (Int)
    case setEngineState (TruckEngineState)
    case setWindowState (TruckWindowState)
    case upgradePower (Int)
    case setTransmission (TruckTransmission)
}


class TruckCar: Car {
    var transmission: TruckTransmission
    var engineState: TruckEngineState
    var windowState: TruckWindowState
    let doorQuantity : Int
    var truckSize: Int
    var truckLoad: Int = 0
    let tankVolume : Double
    
    init (mark: Mark, age: Int, power: Int, truckSize: Int, truckLoad: Int, tankVolume: Double, doorQuantity : Int,engineState: TruckEngineState, windowState: TruckWindowState, transmission: TruckTransmission ){
        self.truckSize = truckSize
        self.truckLoad = truckLoad
        self.tankVolume = tankVolume
        self.doorQuantity = doorQuantity
        self.transmission = transmission
        self.engineState = engineState
        self.windowState = windowState
        super.init (mark: mark, age: age, power: power)
    }
    
    func makeTruckAction (action : TruckActions) {
        
        switch action {
        case .load(let load):
            if truckLoad + load > truckSize {
            print("кузов переполнен")
            } else {
                self.truckLoad += load
            }
        case .setEngineState(let engine):
            self.engineState = engine
        case .setWindowState(let window):
            self.windowState = window
        case .upgradePower(let power):
            self.power += power
        case .setTransmission (let transmission):
            self.transmission = transmission
        }
    }
        
       override func describtion () {
        super.describtion()
        print(self.truckSize, self.truckLoad, self.tankVolume, self.doorQuantity, self.engineState,self.windowState, self.transmission)
    }
}

var truck = TruckCar (mark: .MAN, age: 2005, power: 200, truckSize: 1000, truckLoad: 170, tankVolume: 6.9, doorQuantity : 2,engineState: .turnedOff, windowState: .close, transmission: .mechanical )
var truckSmall = TruckCar (mark: .TGL, age: 2010, power: 210, truckSize: 600, truckLoad: 300, tankVolume: 5.6, doorQuantity : 2,engineState: .turnedOn, windowState: .open, transmission: .mechanical)

    
truck.makeTruckAction(action: .load(50))
truck.makeTruckAction(action: .setTransmission(.auto))
truck.describtion()
truckSmall.makeTruckAction(action: .upgradePower(20))
truckSmall.makeTruckAction(action: .setWindowState(.close))
truckSmall.describtion()
