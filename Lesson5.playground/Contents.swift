import UIKit

// MARK: - Enum

var someDay = "Friday"

func setupAlarm() {
    if someDay == "Friday" {
        print("setup my alarm at 8:00AM")
    }else{
        print("no alarm")
    }
}

setupAlarm()


enum Weekday {
    case monday
    case tuesday
    case wednesday, thursday, friday
    case saturday, sunday
}


var weekday = Weekday.sunday

func setupBedTime() {
    if weekday == .sunday || weekday == .tuesday {
        print("setup my bed time at 11:00PM")
    }else{
        print("no alarm")
    }
}

setupBedTime()


func setupSleepAlarm() {
    switch weekday {
    case .monday:
        print("setup my bed time at 11:00PM")
    case .tuesday:
        print("setup my bed time at 11:00PM")
    case .wednesday:
        print("setup my bed time at 11:00PM")
    case .thursday:
        print("setup my bed time at 11:00PM")
    case .friday:
        print("setup my bed time at 11:30PM")
    case .saturday:
        print("setup my bed time at 11:00PM")
    case .sunday:
        print("setup my bed time at 11:00PM")
    }
}

weekday = .friday
setupSleepAlarm()


enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

var calc = CalculationType.addition

print(calc.rawValue)


enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var somePlanet = Planet.earth
print("Earth is the \(somePlanet.rawValue) planet from the Sun")


enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weekend.sunday("setup bed time at", 11, "PM")


// MARK: - Struct

struct ChessBoard {
    var player: String?
    var x: Int?
    var y: Int?
    
    func getPositionOnBoard() {
        print("The position of \(player ?? "John") is x: \(x ?? 0) and y: \(y ?? 0)")
    }
}

var playerOne = ChessBoard(player: "Tom", x: 12, y: 1)
var playerTwo = ChessBoard(player: "Sam", x: 3, y: 4)

playerOne.getPositionOnBoard()


class MacBook {
    var model: String
    var year: Int
    var color: String
    
    init(model: String, year: Int, color: String) {
        self.model = model
        self.year = year
        self.color = color
    }
    
    func getSpecs() {
        print("\(model), \(year), \(color)")
    }
}


let macBookPro = MacBook(model: "MacBookPro", year: 2019, color: "Grey")

macBookPro.getSpecs()

let macBookAir = macBookPro

macBookAir.model = "MacBook Air"
macBookAir.year = 2023

macBookPro.getSpecs()
macBookAir.getSpecs()


struct iPhone {
    var model: String?
    var year: Int?
    var color: String?
    
    func getSpecs() {
        print("\(model ?? "error"), \(year ?? 0), \(color ?? "none")")
    }
}


let iPhoneXR = iPhone(model: "iPhone XR", year: 2018, color: "black")

var iPhoneXS = iPhoneXR

iPhoneXS.model = "iPhone XS"

iPhoneXR.getSpecs()
iPhoneXS.getSpecs()
