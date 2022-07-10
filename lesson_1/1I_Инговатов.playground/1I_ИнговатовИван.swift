import UIKit
import Foundation

// 1. Solve Quadratic Equation

func quadraticЕquation (a: Double, b: Double, c: Double) -> Double {
    var x: Double = 0;
    let D = pow(Double(b), 2) - 4 * a * c
    if (D < 0) {
        print("Нет действительных корней")
    } else if (D == 0) {
        x = (-b) / (2 * a)
    } else if (D > 0) {
        x = (-b + sqrt((Double(D)))) / 2 * a
    }
    return x
}


quadraticЕquation(a: 3, b: -4, c: 94)

// 2
// 2.1 area of a right triangle

func findArea(a: Float, b: Float) {
    var S: Float
    S = 0.5 * (a * b)
    print(S)
}

// 2.2 Area With Hypotenuse

func findAreaWithHypotenuse(a: Double, b: Double) {
    var c: Double = 0
    c = sqrt(pow(a, 2) + pow(b, 2))
    print(c)
}

findAreaWithHypotenuse(a: 3, b: 4)

// 2.3 Perimeter

func findPerimeter(a: Double, c: Double) {
    var P = sqrt(pow(c, 2) - pow(a, 2)) + a + c
    print(P)
}

findPerimeter(a: 15, c: 16)

// 3. The Bank account

func sumAccount(sum: Double, percent: Double, daysOnAccount: Double) {
    var profit = sum / 100 * percent / 365 * daysOnAccount
    print(profit)
}

sumAccount(sum: 100000, percent: 4, daysOnAccount: 1825)



