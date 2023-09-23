import UIKit

class Functions{
    
    //Question1
    func question1(km:Double) -> Double {
        let conclusion1 = km * 0.621
        return conclusion1
    }
    //Question2
    func question2(longEdge:Int,shortEdge:Int){
        let conslusion2 = longEdge * shortEdge
        print("Conslusion2: \(conslusion2)")
    }
    //Question3
    func question3(number:Int) -> Int{
        var conslusion3 = 1
        for i in 1...number {
            conslusion3 *= i
        }
        return conslusion3
    }
    //Question4
    func question4(word:String){
        var sayac = 0
        for character in word {
            if character == "e" || character == "E"{
                sayac = sayac + 1
                print("Word's number: \(sayac)")
            }
        }
    }
    //Question5
    func question5(edgeNumber:Int) -> Int{
        let conlusion5 = Int(edgeNumber - 2) * 180 / Int(edgeNumber)
        return conlusion5
    }
    
    //Question6
    func question6(day:Int) -> Double{
        let workingWage = 40
        let shiftWage = 80
        let workingHour = 8
        let numberOfDays = 7
        let workNumberOfDays = min(day, 5)
        var totalWage = Double(numberOfDays * workingHour) * Double(workingWage)
        if day > 5 {
            let shiftDay = day - 5
            let totalShiftWage = Double(shiftDay * workingHour) * Double(shiftWage)
            totalWage += totalShiftWage
        }
        return totalWage
    }
    
    //Question7
    let parkingFirstHourFee = 50
    let parkingHourlyTimeOut = 10
    func question7(parkingTime:Int) -> Int{
        var totalParkingFee = 0
        for _ in 1...parkingTime{
            totalParkingFee = totalParkingFee + parkingHourlyTimeOut
        }
        if parkingTime <= 1{
            return parkingFirstHourFee
        }else{
            return parkingFirstHourFee + totalParkingFee
        }
    }
}
    // Question1
    let conslusions = Functions()
    let question1Conction = conslusions.question1(km: 3.0)
    print("Question1 Conction: \(question1Conction)")
    
    
    //Question2
    conslusions.question2(longEdge: 20, shortEdge: 10)
    
    
    //Question3
    let question3Conction = conslusions.question3(number: 5)
    print("Question1 Conction: \(question3Conction)")
    
    //Question4
    let characters = Functions()
characters.question4(word: "elephant")

    //Question5
let interiorAngleTotal = conslusions.question5(edgeNumber: 3)
print("İnterior Angle Total: \(interiorAngleTotal)")

    //Question6
let question6Conction = conslusions.question6(day: 21)
print("Total Wage: \(question6Conction)")

    //Question7
let question7Conction = conslusions.question7(parkingTime: 6)
print("Parking total fee: \(question7Conction)")
