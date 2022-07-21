import UIKit

enum Description {
    case autoMark, year
    case trunkValue, bodyValue
    case isEngineOn, isWindowOpen
}

enum SpeedCarAction {
    case onRacing
    case changeWheels
}

enum TrunkCarAction {
    case uploadCargo, unloadCargo
}

class Car {
    let autoMark: String
    let year: Int
    let trunkValue: Int
    let bodyValue: Int
    var isEngineOn: Bool
    var isWindowOpen: Bool
    
    init(autoMark: String, year: Int, trunkValue: Int, bodyValue: Int, isEngineOn: Bool, isWindowOpen: Bool) {
        self.autoMark = autoMark
        self.year = year
        self.trunkValue = trunkValue
        self.bodyValue = bodyValue
        self.isEngineOn = isEngineOn
        self.isWindowOpen = isWindowOpen
    }
}

class SportCar: Car {
    var sponsorName: String
    var color: String
    let maxSpeed: Int
    
    let speedUp: SpeedCarAction
    let wheelErased: SpeedCarAction
    
    init(autoMark: String, year: Int, trunkValue: Int, bodyValue: Int, isEngineOn: Bool, isWindowOpen: Bool, sponsorName: String, color: String, maxSpeed: Int, speedUp: SpeedCarAction, wheelErased: SpeedCarAction) {
        self.sponsorName = sponsorName
        self.color = color
        self.maxSpeed = maxSpeed
        self.speedUp = speedUp
        self.wheelErased = wheelErased
        super.init(autoMark: autoMark, year: year, trunkValue: trunkValue, bodyValue: bodyValue, isEngineOn: isEngineOn, isWindowOpen: isWindowOpen)
    }
    
    func onNitroPush() {
        if (speedUp == .onRacing) {
            print("Nitro is on")
        }
    
    }
    
    func onChangeWheel() {
        if (wheelErased == .changeWheels) {
            print("Here is a new wheel")
        }
    }
}

class TrunkCar: Car {
    var isCargoLoaded: Bool
    var isDriverSleepPlace: Bool
    var wheelNumber: Int
    let uploadCargo: TrunkCarAction
    
    init(autoMark: String, year: Int, trunkValue: Int, bodyValue: Int, isEngineOn: Bool, isWindowOpen: Bool, isCargoLoaded: Bool, isDriverSleepPlace: Bool,wheelNumber: Int, uploadCargo: TrunkCarAction) {
        self.isCargoLoaded = isCargoLoaded
        self.isDriverSleepPlace = isDriverSleepPlace
        self.wheelNumber = wheelNumber
        self.uploadCargo = uploadCargo
        super.init(autoMark: autoMark, year: year, trunkValue: trunkValue, bodyValue: bodyValue, isEngineOn: isEngineOn, isWindowOpen: isWindowOpen)
    }
    
    func onUploadCargo() {
        if (uploadCargo == .uploadCargo) {
            print("Cargo is uploaded")
        } else {
            print("Cargo is unloade`d")
        }
    }
        
}

let sportCar = SportCar(autoMark: "Ferrari", year: 2005, trunkValue: 300, bodyValue: 200, isEngineOn: false, isWindowOpen: false, sponsorName: "Pepsi", color: "Red", maxSpeed: 300, speedUp: .onRacing, wheelErased: .changeWheels)

let truckCar = TrunkCar(autoMark: "Man", year: 2015, trunkValue: 300, bodyValue: 500, isEngineOn: true, isWindowOpen: true, isCargoLoaded: false, isDriverSleepPlace: true, wheelNumber: 8, uploadCargo: .unloadCargo)


sportCar.onNitroPush()
sportCar.onChangeWheel()
truckCar.onUploadCargo()





