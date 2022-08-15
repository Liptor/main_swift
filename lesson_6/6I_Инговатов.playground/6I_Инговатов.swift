import Foundation

struct Phone {
    var name: String
    var mark: String
    var year: Int
    var processorType: String
}

extension Phone: CustomStringConvertible {
    var description : String {
        return "My phone is: \(name), it's mark is: \(mark), it's year: \(year), it has poceccor: \(processorType) "
    }
}

struct queue <T> {
    private var elements: [T] = []
    
    public var isArrayEmpty: Bool {
        return elements.count == 0
    }
    
    public var head: T? {
        if isArrayEmpty {
            print("Array is empty.")
            return nil
        } else {
            print("\(elements.last!) is the last element")
            return elements.last
        }
    }
    
    mutating func enqueue(element: T) {
        elements.append(element)
    }
    mutating func dequeue()->T {
        return elements.removeLast()
    }
    
    public var front: T? {
        if isArrayEmpty {
            print("Array is empty.")
            return nil
        } else {
            print("\(elements.last!) is the last element")
            return elements.first
        }
    }
    
    func printMyQueue() {
        print(elements)
    }
}

extension queue {
    func myFilter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in elements {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}

var phones = queue<Phone>()
phones.enqueue(element: .init(name: "IPhone4", mark: "Apple", year: 2010, processorType: "A4"))
phones.enqueue(element: .init(name: "IPhone5", mark: "Apple", year: 2012, processorType: "A6"))
phones.enqueue(element: .init(name: "IPhone6", mark: "Apple", year: 2014, processorType: "A8"))
phones.enqueue(element: .init(name: "IPhone7", mark: "Apple", year: 2016, processorType: "A10"))

phones.printMyQueue()
phones.head
phones.front

let honoursPupil = phones.myFilter(predicate: {$0.year == 2010})
print(honoursPupil)
