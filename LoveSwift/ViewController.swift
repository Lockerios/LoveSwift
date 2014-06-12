//
//  ViewController.swift
//  LoveSwift
//
//  Created by Lockerios on 6/12/14.
//  Copyright (c) 2014 Lockerios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        println("Hello, world test")
        
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
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

