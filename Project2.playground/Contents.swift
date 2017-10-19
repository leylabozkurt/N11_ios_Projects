//: Playground - noun: a place where people can play

import UIKit

class Functions {
    
    //1.Write a function that returns tuple.
    func getPersonalInfo() -> (String, String){
    
        return ("Leyla", "Bozkurt")
    
    }
    
    
    //2.Write a function that returns tuple with parameter labels.
    func getPersonalInfoWithID(id: Int) -> (isim: String, soyisim: String){
        var isim = ""
        var soyisim = ""
        if id == 1{
            isim = "Leyla"
            soyisim = "Bozkurt"
        }
        else{
            isim = "Kişi"
            soyisim = "Bulunamadı"
        }
        
        return (isim, soyisim)
        
    }
    
    
    //3.Write switch control that checks a tuple values and executes different cases.
    func sizeMatcher(size: (Int, Int)) -> () {
        switch size {
        case let (height, width) where height < 50 && width < 50:
            print("SMALL")
        case let (height, width) where height == 50 && width == 50:
            print("MEDIUM")
        case let (height, width) where height > 50 && width > 50:
            print("LARGE")
        default:
            print("Another creature")
        }
    }
    
    
    //4.Put the tuple type into typealias and use it in a function while returning.
    typealias Date = (Int, Int, Int)
    func getDate() -> Date {
        return (19,10,2017)
    }
    
    
    //5.Create an array with 5 elements, different country cities are preferred.
    var citiesInGermany: [String] = ["Berlin", "Leipzig", "Munich", "Dortmund", "Stuttgart"]
    
    //6.Loop over the created array and process the elements using for loop.
    func printCitiesInGermany() -> () {
        for city in citiesInGermany{
            print(city)
        }
    }
    
}

let functions = Functions()

functions.getPersonalInfo()
functions.getPersonalInfoWithID(id: 1)
functions.sizeMatcher(size: (0,0))
functions.getDate()
functions.citiesInGermany.count
functions.printCitiesInGermany()
