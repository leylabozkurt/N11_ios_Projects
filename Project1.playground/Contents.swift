//: Playground - noun: a place where people can play

import UIKit

class Functions {

// 1) Write two functions that overload of each others

    func greet(person: String) -> Void{
        print("Hello \(person)")
    }

    func greet(person: Bool) -> Void {
        print("Status: \(person)")
    }

// 2) Write a function which has default parameter value

    func act(activity: String, defaultActivity: String = "Sleep") {
        print("Today: \(defaultActivity) and \(activity) done")
    }

// 3) Write a function which has one paremeter and one variadic parameter

    func order(waiter: String, orderr: String ...) {
        print("waiter: \(waiter)->orderr: \(orderr)")
    }


// 4) Write a function which has ignored external parameter name.
    
    func highFive(_ person: String){
        print("Çak bi beşlik \(person)")
    }
    
// 5) Write a function inside a function.
    
    func enterBar(age:Int){
        func checkAge() -> Bool{
            if age > 18 {
                return true
            }
            else {
            return false
            }
        }
        if checkAge(){
        print("You can enter the bar.")
        }
        else {
        print("You cant.")}
    }

// 6) Write a recursive function.
    
    func geriSayım(_ start: Int){
        print(start)
        if start > 0 {
            geriSayım(start-1)
        }
    }
    

// 7) Write typealias for a function type which has different parameter types.
    typealias Finder = (String) -> (Bool)
    
// 8) Pass function as a value to another function.
    let isAExist : Finder = { (text: String) -> (Bool) in
        var str: String = text
        if str.contains("a"){
            return true
        }
        else{
            return false
        }
    }
    
    func checkStrings(_ input: String, _ op: Finder){
        let result = op(input)
        print("Input Text: \(input)")
        print("Result: \(result)")
    }
}



let functions = Functions()

functions.act(activity: "Do Fitness")
functions.act(activity: "Meet", defaultActivity: "Cook")
functions.order(waiter: "Tom", orderr: "süt" , "su")
functions.highFive("Leyla")
functions.enterBar(age: 23)
functions.enterBar(age: 17)
functions.geriSayım(2)

typealias Finder = (String) -> (Bool)
let isAExist : Finder = { (text: String) -> (Bool) in
    var str: String = text
    if str.contains("a"){
        return true
    }
    else{
        return false
    }
}
functions.checkStrings("Selam", isAExist)



