//
//  ViewController.swift
//  LoveSwift
//
//  Created by Lockerios on 6/12/14.
//  Copyright (c) 2014 Lockerios. All rights reserved.
//

import UIKit

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

extension Int: ExampleProtocol {
    var simpleDescription: String {
    return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

extension Double {
    func absoluteValue() -> Int {
        return Int(self)
    }
}

class ViewController: UIViewController {
    
    func startingPart3() {
        class SimpleClass: ExampleProtocol {
            var simpleDescription: String = "A very simple class."
            var anotherProperty: Int = 69105
            func adjust() {
                simpleDescription += "  Now 100% adjusted."
            }
        }
        
        var a = SimpleClass()
        a.adjust()
        let aDescription = a.simpleDescription
        
        println(aDescription)
        
        struct SimpleStructure: ExampleProtocol {
            var simpleDescription: String = "A simple structure"
            mutating func adjust() {
                simpleDescription += " (adjusted)"
            }
        }
        var b = SimpleStructure()
        b.adjust()
        let bDescription = b.simpleDescription
        
        println(bDescription)
        
        enum ExampleEnum : ExampleProtocol{
            case Base, Adjusted
            
            var simpleDescription: String {
                get {
                    return self.getDescription()
                }
            }
            
            func getDescription() -> String{
                switch self{
                case Base:
                    return "A simple description of enum"
                case .Adjusted:
                    return "Adjusted description of enum"
                default:
                    return "default description"
                }
            }
            
            mutating func adjust() -> Void{
                self = ExampleEnum.Adjusted
            }
        }
        
        var c = ExampleEnum.Base
        c.adjust()
        let cDescription = c.simpleDescription
        
        println(cDescription)

        var count: Int = 8
        count.adjust()
        println(count.simpleDescription)
        
        var doubleCount: Double = 9.2
        
        println(doubleCount.absoluteValue())
        
        let protocolValue: ExampleProtocol = a
        println(protocolValue.simpleDescription)
//        protocolValue.anotherProperty  // Uncomment to see the error
        
        func repeat<ItemType>(item: ItemType, times: Int) -> ItemType[] {
            var result = ItemType[]()
            for i in 0..times {
                result += item
            }
            return result
        }
        
        println(repeat("Hello",2))
        println(repeat(2,2))
        
        let testAry = [1, 2, 3]
        testAry[0] = 4
    }
    
    func startingPart1() {
        func greet(name: String, day:String, dinner:String) -> String {
            return "Hello \(name), today is \(day), I have eat \(dinner)"
        }
        
        func getGasPrices() -> (Double, Double, Double) {
            return (3.59, 3.69, 3.79)
        }
        
        func sumOf(numbers: Int...) -> Int {
            var sum = 0
            for number in numbers {
                sum += number
            }
            
            return sum
        }
        
        func avgOf(numbers: Int...) -> Float {
            var avg :Float = 0
            var sum = 0
            for number in numbers {
                sum += number
            }
            var count :Int = numbers.count
            avg = Float(Int(sum) / Int(count))
            
            return avg
        }
        
        func returnFifteen() -> Int {
            var y = 10
            func add() {
                y += 5
            }
            add()
            
            return y
        }
        
        
        func makeIncrementer(needIncrement: Int) -> Int {
            func addOne(number: Int) -> Int {
                return 1 + number
            }
            
            return addOne(needIncrement)
        }
        
        println(greet("Bob", "Tuesday", "pizza"))
        
        println(getGasPrices())
        
        println(sumOf(43, 333, 12))
        
        println(avgOf(43, 333, 12))
        
        println("Hello, world test")
        
        println(returnFifteen())
        
        var increment = makeIncrementer(7)
        
        println(increment)
        
        
        
        let myFloat:Float = 4
        
        let peterName = "Fengrenchao"
        let helloPeter = "\(String(myFloat) + peterName)"
        println(helloPeter)
        println("\(String(myFloat) + peterName)")
        
        let label = "The width is"
        let width = 94
        let widthLabel = label + String(width)
        
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples + oranges) pieces of fruit"
        
        var shoppingList = ["catfish","water","tulips","blue paint"]
        shoppingList[1] = "bottle of water"
        
        var occupations = [
            "Malcolm":"Captain",
            "Kaylee":"Mechanic"
        ]
        
        occupations["Jayne"] = "Public Relations"
        
        let emptyArray = String[]()
        let emptyDictionary = Dictionary<String, Float>()
        
        var myShoppingList = []
        let yourShoppingList = []
        
        let individualScores = [75, 43, 103, 87, 12]
        var teamScore = 0
        for score in individualScores {
            if score > 50 {
                teamScore += 3
            } else {
                teamScore += 1
            }
        }
        
        println("\(teamScore)")
        
        var optionalName: String? = "John"
        optionalName = nil
        var greeting = "Hello!"
        if let name = optionalName {
            greeting = "Hello,\(name)"
        } else {
            greeting = "Why no come"
        }
        
        println(greeting)
        
        let vegetable = "red pepper"
        var vegetableComment: String? = nil
        switch vegetable{
        case "celery":
            vegetableComment = "Add some raisins and make ants on a log"
        case "cucumber","watercress":
            vegetableComment = "That would make a good tea sandwich"
        case let x where x.hasSuffix("pepper"):
            vegetableComment = "Is it a spicy\(x)?"
        default:
            vegetableComment = "Everything tastes goods in a soup."
        }
        
        println(vegetableComment)
        
        let  interestNumbers = [
            "Prime":[2, 3, 5, 7, 11, 13],
            "Fibonacci":[1, 1, 2, 3, 5, 8],
            "Square":[1, 4, 9, 16, 25]
        ]
        var largest = 0
        var largestType:String? = nil
        for (kind, numbers) in interestNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                    largestType = kind
                }
            }
        }
        
        println("\(largest) \(largestType)")
        
        var n = 2
        var countn = 0
        while n < 100 {
            n = n * 2
            countn += 1
        }
        
        println(countn)
        
        var m = 2
        var countm = 0
        do {
            m = m * 2
            countm += 1
        } while m < 100
        
        println(countm)
        
        var firstForLoop = 0
        for i in 0..3 {
            firstForLoop += i
        }
        
        println(firstForLoop)
        
        var secondForLoop = 0
        for var i = 0; i < 3; ++i {
            secondForLoop += i
        }
        
        println(secondForLoop)
        
        func hasAnyMatches(List: Int[], condition: Int -> Bool) -> Bool {
            for item in List {
                if condition(item) {
                    return true
                }
            }
            
            return false
        }
        
        func lessThanTen(number: Int) -> Bool {
            return number < 10
        }
        
        var numbers = [20, 19, 7, 12]
        
        println(hasAnyMatches(numbers, lessThanTen))
        
        
        //        numbers.map({
        //            (number: Int) -> Int in
        //            let result = 3 * number
        //            return result
        //        })
        //        numbers.map()
        
        numbers = numbers.map({ number in 3 * number })
        
        println(numbers)
        
        numbers = numbers.map({
            (number: Int) -> Int in
            if number % 2 == 0 {
                return number
            } else {
                return 0
            }
            })
        
        println(numbers)
        
        numbers = [1, 2, 3]
        numbers = numbers.map({ 3 * $0 })
        
        println(numbers)
        
        numbers = sort([1, 3, 5, 2, 0]) { $0 > $1 }
        
        println(numbers)
        
        var 😄swift: String = ""
        😄swift = "Hello Swift"
        
        println(😄swift)
    }
    
    func startingPart2() {
        class Shape {
            var numberOfSides = 0
            let whoCreatedThis = "Lockerios"
            
            func simpleDescription() -> String {
                return "A shape with \(numberOfSides) sides. Created by \(whoCreatedThis)."
            }
            
            func simpleDescriptionQuick(title: String) -> String {
                return "A shape with \(numberOfSides) sides. Created by \(whoCreatedThis). Title is \(title)"
            }
        }
        
        class NamedShape {
            var numberOfSides: Int = 0
            var name: String
            
            init(name: String) {
                self.name = name
            }
            
            func simpleDescription() -> String {
                return "A shape with \(numberOfSides) sides"
            }
        }
        
        var myShape = Shape()
        myShape.numberOfSides = 9
        var shapeDescription = myShape.simpleDescription()
        
        println(shapeDescription)
        
        shapeDescription = myShape.simpleDescriptionQuick("Lockerios Test")
        
        println(shapeDescription)
        
        class Square: NamedShape {
            var sideLength: Double
            
            init(sideLength :Double, name: String) {
                self.sideLength = sideLength
                super.init(name: name)
            }
            
            func area() -> Double {
                return sideLength * sideLength
            }
            
            override func simpleDescription() -> String {
                return "A square with sides of length \(sideLength)."
            }
        }
        
        let test = Square(sideLength: 5.3, name: " my test square")
        println(test.area())
        println(test.simpleDescription())
        
        class Circle: NamedShape{
            var radius: Double
            
            init(radius :Double, name: String) {
                self.radius = radius
                super.init(name: name)
                numberOfSides = 0
            }
            
            func area() -> Double {
                return 3.14 * radius * radius
            }
            
            override func simpleDescription() -> String {
                return "A circle with radius \(radius)."
            }
        }
        
        let testCircle = Circle(radius: 2.2, name: "Hach")
        println(testCircle.area())
        println(testCircle.simpleDescription())
        
        class EquilateralTriangle: NamedShape {
            var sideLength: Double = 0.0
            
            init(sideLength: Double, name: String) {
                self.sideLength = sideLength
                super.init(name: name)
                numberOfSides = 3
            }
            
            var perimeter: Double {
            get {
                return 3.0 * sideLength
            }
            set {
                sideLength = newValue / 3.0
            }
            }
            
            override func simpleDescription() -> String {
                return "An equilateral triagle with sides of length \(sideLength)."
            }
        }
        
        var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
        println(triangle.perimeter)
        triangle.perimeter = 9.9
        println(triangle.sideLength)
        
        class TriangleAndSquare {
            var triangle: EquilateralTriangle {
            willSet {
                square.sideLength = newValue.sideLength
            }
            }
            
            var square: Square {
            willSet {
                triangle.sideLength = newValue.sideLength
            }
            }
            
            init(size: Double, name: String) {
                square = Square(sideLength: size, name: name)
                triangle = EquilateralTriangle(sideLength: size, name: name)
            }
        }
        var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
        println(triangleAndSquare.square.sideLength)
        println(triangleAndSquare.triangle.sideLength)
    
        triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
        println(triangleAndSquare.triangle.sideLength)
        
        
        class Counter {
            var count: Int = 0
            func incrementBy(amount: Int, numberOfTimes times: Int) {
                count += amount * times
            }
        }
        var counter = Counter()
        counter.incrementBy(2, numberOfTimes: 7)
        println(counter.count)
        
        var optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
        optionalSquare = nil
        let sideLength = optionalSquare?.sideLength
        println(sideLength)
        
        enum Rank: Int {
            case Ace = 1
            case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
            case Jack, Queen, King
            func simpleDescription() -> String {
                switch self {
                case .Ace:
                    return "ace"
                case .Jack:
                    return "jack"
                case .Queen:
                    return "queen"
                case .King:
                    return "king"
                default:
                    return String(self.toRaw())
                }
            }
        }
        let ace = Rank.Ace
        let aceRawValue = ace.toRaw()
        println(aceRawValue)
        
        enum Suit {
            case Spades, Hearts, Diamonds, Clubs
            func simpleDescription() -> String {
                switch self {
                case .Spades:
                    return "spades"
                case .Hearts:
                    return "hearts"
                case .Diamonds:
                    return "diamonds"
                case .Clubs:
                    return "clubs"
                }
            }
        }
        
        struct Card {
            var rank: Rank
            var suit: Suit
            func simpleDescription() -> String {
                return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
            }
        }
        
        let threeOfSpades = Card(rank: .Three, suit: .Spades)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        
        println(threeOfSpadesDescription)
        
        enum ServerResponse {
            case Result(String, String)
            case Error(String)
        }
        
        let success = ServerResponse.Result("6:00 am", "8:09 pm")
        let failure = ServerResponse.Error("Out of cheese.")
        
        switch success {
        case let .Result(sunrise, sunset):
            let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
            println(serverResponse)
        case let .Error(error):
            let serverResponse = "Failure...  \(error)"
            println(serverResponse)
        }
        
        switch failure {
        case let .Result(sunrise, sunset):
            let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
            println(serverResponse)
        case let .Error(error):
            let serverResponse = "Failure...  \(error)"
            println(serverResponse)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        startingPart1()
        
//        startingPart2()
        
        startingPart3()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

