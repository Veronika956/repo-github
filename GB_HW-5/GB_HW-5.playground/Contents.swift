import UIKit

    enum WindowState {
        case open
        case close
    }

    enum EngineState {
        case turnedOn
        case turnedOff
    }

    enum Transmission {
        case mechanical
        case auto
    }

    protocol Car {
        var mark: String { get }
        var age: Int { get }
        var power: Int { get set }
        var windowState: WindowState {get set}
        var engineState: EngineState {get set}
    }

    extension Car {
        func describtion(){
            return print("\(self.mark),\(self.age),\(self.power), Window: \(self.windowState), Engine: \(self.engineState)")
        }
    }

    extension Car {
        mutating func upgradePower (_ extraPower : Int ) {
            power += extraPower
        }
    }
    extension Car {
        mutating func setWindow (_ state : WindowState ) {
            windowState = state
        }
    }

    extension Car {
        mutating func setEngine (_ state : EngineState ) {
            engineState = state
        }
    }
       

    class TruckCar: Car , CustomStringConvertible {
        var mark: String
        var age: Int
        var power: Int
        var transmission: Transmission
        var engineState: EngineState
        var windowState: WindowState
        let doorQuantity : Int
        var truckSize: Int
        var truckLoad: Int = 0
        let tankVolume : Double
        
        var description: String {
            return "Transmission: \(self.transmission)"
        }
        
        init (mark: String, age: Int, power: Int, truckSize: Int, truckLoad: Int, tankVolume: Double, doorQuantity : Int,engineState: EngineState, windowState: WindowState, transmission: Transmission ){
            self.mark = mark
            self.age = age
            self.power = power
            self.truckSize = truckSize
            self.truckLoad = truckLoad
            self.tankVolume = tankVolume
            self.doorQuantity = doorQuantity
            self.transmission = transmission
            self.engineState = engineState
            self.windowState = windowState
            
        }
        
        func setTransmission (_ state : Transmission ) {
            transmission = state
        }
    
    }

var man = TruckCar (mark: "MAN", age: 2005, power: 200, truckSize: 1000, truckLoad: 170, tankVolume: 6.9, doorQuantity : 2,engineState: .turnedOff, windowState: .close, transmission: .mechanical )

var tgl = TruckCar (mark: "TGL", age: 2009, power: 210, truckSize: 1000, truckLoad: 150, tankVolume: 6.5, doorQuantity : 2,engineState: .turnedOff, windowState: .close, transmission: .mechanical )

man.describtion()
man.upgradePower(100)
man.setWindow(.open)
man.describtion()
man.setEngine(.turnedOn)
man.describtion()
man.setTransmission(.auto)
man.describtion()
print(man)
tgl.setTransmission(.auto)
tgl.setWindow(.open)
tgl.setEngine(.turnedOn)
tgl.describtion()
print(tgl)


enum CarColor {
    case red, black, silver, cherryMetallic, cyberOrange, diamondSky
}

enum RaceType {
    case choose, rallying, stock, touring, sports, oneMake, timeAttack
}
enum RaceCountry {
    case choose, Monaco,Japan, Germany, France, UAE
}

class SportCar: Car, CustomStringConvertible {
    var mark: String
    var age: Int
    var power: Int
    var seatingCapacity: Int
    var windowState: WindowState
    var engineState: EngineState
    var color: CarColor
    var country: RaceCountry
    var type: RaceType
    
    var description: String {
        return "\(self.mark) is starting race - \(self.type) in \(self.country). Car color: \(self.color)"
        }
    
    

    init (mark: String, age: Int, power: Int, seatingCapacity: Int, windowState:WindowState, engineState: EngineState, color: CarColor, country: RaceCountry, type: RaceType){
        self.mark = mark
        self.age = age
        self.power = power
        self.engineState = engineState
        self.seatingCapacity = seatingCapacity
        self.windowState = windowState
        self.color = color
        self.country = country
        self.type = type
        
    }
    
    func changeColor (_ set : CarColor) {
        color = set
    }
    
    func startRace (_ setCountry: RaceCountry, _ setType: RaceType) {
        country = setCountry
        type = setType
    }
    
}
    
var audi = SportCar (mark: "Audi", age: 2021 , power: 250, seatingCapacity: 2, windowState:.open, engineState: .turnedOff, color : .black, country: .choose, type: .choose)
var dodge = SportCar (mark: "Dodge", age: 2020 , power: 250, seatingCapacity: 2, windowState: .close, engineState: .turnedOff, color : .cyberOrange, country: .Japan, type: .sports)

audi.startRace(.France, .oneMake)
audi.changeColor(.diamondSky)
audi.setEngine(.turnedOn)
audi.describtion()
print(audi)
dodge.upgradePower(20)
dodge.setWindow(.open)
dodge.describtion()
print(dodge)
