import UIKit

enum CarWindowState {
    case open, close
}

enum CarEngineState {
    case turnedOn, turnedOff
}

enum CarActions {
    case load (Int)
    case setEngineState (CarEngineState)
    case setWindowState (CarWindowState)
    case upgradePower (Int)
}

struct SportCar{
    let mark: String
    let age: Int
    var power : Int
    var bootSize: Int
    var engineState: CarEngineState = .turnedOff
    var windowState: CarWindowState = .close
    var bootLoad: Int = 0
    var seatingCapacity: Int

    mutating func makeCarAction (action : CarActions) {
        
        switch action {
        case .load(let load):
            if bootLoad + load > bootSize {
            print("багажник переполнен")
            } else {
                self.bootLoad += load
            }
        case .setEngineState(let engine):
            self.engineState = engine
        case .setWindowState(let window):
            self.windowState = window
        case .upgradePower(let power):
            self.power += power
        }
        
        self.describtion()
    }
    
    func describtion () {
        print(self.mark, self.age, self.power, self.engineState, self.windowState, self.bootLoad)
    }
        
}
var car = SportCar (mark: "Audi", age: 2007 , power: 200, bootSize: 50, engineState: .turnedOff ,
                    windowState: .close, bootLoad: 20, seatingCapacity: 5)

car.describtion()
car.makeCarAction(action: .load(20))
car.makeCarAction(action: .setEngineState(.turnedOn))
car.makeCarAction(action: .setWindowState(.open))
car.makeCarAction(action: .upgradePower(50))

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

struct TruckCar{
    let mark: String
    let age: Int
    var transmission: TruckTransmission = .mechanical
    var power : Int
    let doorQuantity : Int
    var truckSize: Int
    var engineState: TruckEngineState = .turnedOff
    var windowState: TruckWindowState = .close
    var truckLoad: Int = 0
    var seatingCapacity: Int
    let tankVolume : Double

    mutating func makeTruckAction (action : TruckActions) {
        
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
        
        self.truckDescribtion()
    }
    
    func truckDescribtion () {
        print(self.mark, self.age, self.transmission, self.power, self.doorQuantity, self.engineState, self.windowState, self.truckLoad, self.tankVolume)
    }
        
}
    var truck = TruckCar (mark: "MAN TGL", age: 2005, transmission: .mechanical, power: 110, doorQuantity: 2, truckSize: 1000, engineState: .turnedOff ,windowState: .close, truckLoad: 167, seatingCapacity: 2, tankVolume: 6.9 )

truck.truckDescribtion()
truck.makeTruckAction(action: .load(500))
truck.makeTruckAction(action: .setEngineState(.turnedOn))
truck.makeTruckAction(action: .setWindowState(.open))
truck.makeTruckAction(action: .upgradePower(20))
truck.makeTruckAction(action: .setTransmission(.auto))

