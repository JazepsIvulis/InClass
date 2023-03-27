import UIKit

// MARK: - Function()

func multiplyTwoNumbers() {
    
    print("result will be: ", 3 * 3)
}

multiplyTwoNumbers()


func multiplyNumbers() -> Int {
    
    let a = 5
    let b = 2
    
    return a * b
}

print("result will be: ", multiplyNumbers())


func multiplyNumbers(numberOne a: Int, numberTwo b: Int) -> Int {
    
    return a * b
}

multiplyNumbers(numberOne: 5, numberTwo: 10)


func multiplyTwoNumbers(numberOne: Int, numberTwo: Int) -> Int {
    
    return numberOne * numberTwo
}

multiplyTwoNumbers(numberOne: 5, numberTwo: 21)


func multiplyTwoNumbers(_ numberOne: Int, _ numberTwo: Int) -> Int {
    
    return numberOne * numberTwo
}

multiplyTwoNumbers(5, 12)


func multiplyTwoNumbers(_ numberOne: Int, multiply numberTwo: Int) -> Int {
    
    return numberOne * numberTwo
}

multiplyTwoNumbers(4, multiply: 5)


func average(_ myNumbers: Double...) -> Double {
    
    var total: Double = 0.0
    
    for number in myNumbers {
        total += number
    }
    
    return total / Double(myNumbers.count)
}

average(5, 10, 5, 10)


let someValue = 5
let arrayOfNumbers = [1,2,4,5,6,7,0,20]

func filterLessThan(intValue: Int, numbers: [Int]) -> [Int] {
    
    var filteredNumbers: [Int] = []
    
    for numb in numbers {
        if numb < intValue {
            filteredNumbers.append(numb)
        }
    }
    
    return filteredNumbers
}

filterLessThan(intValue: someValue, numbers: arrayOfNumbers)


func calculateDateValue(from myDay: Int, _ myMonth: Int, _ myYear: Int) {
    
    let currentDate = Date()
    
    var dateComponents = DateComponents()
    dateComponents.day = myDay
    dateComponents.month = myMonth
    dateComponents.year = myYear
    
    let userCalendar = Calendar.current
    
    if let calculatedDate = userCalendar.date(from: dateComponents) {
        
        let daysPassed = userCalendar.dateComponents([.day], from: calculatedDate, to: currentDate).day
        let monthsPassed = userCalendar.dateComponents([.month], from: calculatedDate, to: currentDate).month
        let yearsPassed = userCalendar.dateComponents([.year], from: calculatedDate, to: currentDate).year
        
        print("\(yearsPassed ?? 0) years, \(monthsPassed ?? 0) months and \(daysPassed ?? 0) days have passed since")
    }
}

calculateDateValue(from: 15, 3, 1994)
