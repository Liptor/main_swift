import UIKit


// 1. Is a number even or not
func evenFunc(num: Int) {
    if (num % 2 == 0) {
        print("Число четное")
    } else {
        print("Число нечетное")
    }
}

evenFunc(num: 1)

// 2. Is the number divisible by 3

func devicionFunc(num: Int) {
    if (num % 3 == 0) {
        print("\(num) делится без остатка на 3")
    } else {
        print("\(num) не делится без остатка на 3")
    }
}

devicionFunc(num: 15)

// 3. Array with 100 numbers

var arr: [Int] = []

for i in (0...100) {
    arr.append(i)
}

print(arr)

// 4. Delete all even numbers from the array
var newArr: [Int] = []

for i in arr where i % 2 != 0 && i % 3 == 0 {
    newArr.append(i)
}

print(newArr)

// 5. Fibonacci numbers
var fibonnacciArr: [Int] = [1, 1]
 
func fibonnacciNumbersAdd(_ num: Int) -> [Int]  {
    (2...num).forEach{ i in
        fibonnacciArr.append(fibonnacciArr[i - 1] + fibonnacciArr[i - 2])
    }
    return fibonnacciArr
}

fibonnacciNumbersAdd(50)
print(fibonnacciArr)

// 6. Prime Numbers array added
func primeNumbers(arr: [Int]) -> [Int] {
    var primeNumbersArray: [Int] = []
    var newArr = arr
    while let newPrimeNum = newArr.first {
        primeNumbersArray.append(newPrimeNum)
        newArr = newArr.filter { $0 % newPrimeNum != 0 }
    }
    return primeNumbersArray
}

print(primeNumbers(arr: Array(2...100)))



