import UIKit

enum Description {
    case autoMark, year
    case trunkValue, bodyValue
    case isEngineOn, isWindowOpen
}

enum Action {
    case turnOnEngine, turnOffEngine
    case openWindow, closeWindow
    case setValue(val: Int)
}

struct SportCar {
    let autoMark: String
    let year, maxValue, trunkValue, bodyValue: Int
    var currentVal: Int
    var isEngineOn, isWindowOpen: Bool
    
    mutating func act(action: Action) {
        switch action {
        case .turnOnEngine:
            print ("\(autoMark) engine is on")
        case .turnOffEngine:
            print ("\(autoMark) engine is off")
        case .openWindow:
            print("\(autoMark) windows are open")
        case .closeWindow:
            print("\(autoMark) windows are closed")
        case .setValue(let value):
            if (currentVal + value <= maxValue) {
                currentVal += value
            } else {
                print("You can't put more")
            }
        }
    }
}

struct TrunkCar {
    let autoMark: String
    let year, maxValue, trunkValue, bodyValue: Int
    var currentVal: Int
    var isEngineOn, isWindowOpen: Bool
    
    mutating func act(action: Action) {
        switch action {
        case .turnOnEngine:
            print ("\(autoMark) engine is on")
        case .turnOffEngine:
            print ("\(autoMark) engine is off")
        case .openWindow:
            print("\(autoMark) windows are opened")
        case .closeWindow:
            print("\(autoMark) windows are closed")
        case .setValue(let val):
            if (currentVal + val <= maxValue) {
                currentVal += val
                print("You put \(val) of items")
            } else {
                print("You can't put more")
            }
        }
    }
}

var car1 = SportCar(autoMark: "BMW",
                   year: 2000,
                   maxValue: 1000,
                   trunkValue: 2016,
                   bodyValue: 580,
                   currentVal: 0,
                   isEngineOn: false,
                   isWindowOpen: false)

var car2 = SportCar(autoMark: "hyundai",
                   year: 2014,
                   maxValue: 800,
                   trunkValue: 1223,
                   bodyValue: 23,
                   currentVal: 315,
                   isEngineOn: false,
                   isWindowOpen: false)

var truck1 = TrunkCar(autoMark: "Mercedes-Benz",
                      year: 2012,
                      maxValue: 1000,
                      trunkValue: 2016,
                      bodyValue: 100000,
                      currentVal: 518,
                      isEngineOn: true,
                      isWindowOpen: false)

var truck2 = TrunkCar(autoMark: "Man",
                      year: 2015,
                      maxValue: 2321,
                      trunkValue: 2211,
                      bodyValue: 22211,
                      currentVal: 2222,
                      isEngineOn: false,
                      isWindowOpen: true)


car1.act(action: .closeWindow)
car1.act(action: .setValue(val: 199))
car2.act(action: .turnOnEngine)
car2.act(action: .openWindow)

truck1.act(action: .openWindow)
truck1.act(action: .setValue(val: 300))
truck2.act(action: .turnOnEngine)
truck2.act(action: .closeWindow)
