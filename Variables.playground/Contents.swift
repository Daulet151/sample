import Foundation


let myName = "Vandad"
let yourName = "Foo"

var names = [
   myName,
   yourName
]

names.append("Bar")
names.append("Baz")

func getFullname(firstName: String = "Martin",
                 lastName: String = "Pogba")-> String{
    "\(firstName) \(lastName)"
}

getFullname()
getFullname(firstName: "Baz")
getFullname(lastName: "Sebastian")
getFullname(firstName: "Ricardo", lastName: "Kaka")


func customAdd(_ lhs: Int,
               _ rhs: Int,
               using function: (Int, Int) -> Int
) -> Int {
    function(lhs, rhs)
}

let ages = [30, 20, 19, 40]

ages.sorted(by: >)

struct Person {
    let name: String
    let age:  Int
}

let foo = Person(
  name: "Foo",
  age: 20
)

foo.name
foo.age

struct CommodoreComputer {
    let name: String
    let manufacturer = "Commodore"
//    init(name: String){
//        self.name = name
//        self.manufacturer = "Commodore"
//    }
}

let c64 = CommodoreComputer(name: "C64")
c64.name
c64.manufacturer

struct Car{
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        "Driving..."
        currentSpeed = speed
    }
}

var immutableCar = Car(currentSpeed: 10)
immutableCar.drive(speed: 20)

protocol HasName {
    var name: String { get }
    var age: Int {get set}
}

extension HasName {
    func describeMe() -> String{
        "Your name is \(name) and you are \(age) years old"
    }
    
    mutating func increaseAge(){
        self.age += 1
    }
}

struct Dog: HasName {
    let name: String
    var age: Int
}

var woof = Dog(
    name: "Woof",
    age: 10
)
woof.name
woof.age
woof.age+=1
woof.age

protocol vehicle{
    var speed: Int {get set}
    mutating func increaseSpeed(by value: Int)
}

extension vehicle{
    mutating func increaseSpeed(
        by value: Int
    ){
        self.speed+=value
    }
}

struct Bike: vehicle{
    var speed: Int
    init(){
        self.speed = 0
    }
}

var bike = Bike()

func describe(obj: Any) -> String{
    if obj is vehicle{
        return "obj conforms to vehilce protocol"
        
    }
    else{
        return "obj does not conform to vehicle protocol"
    }
}

describe(obj: bike)

func increaseSpeedifVehicle(obj: Any){
    if var vehicle = obj as? vehicle {
        vehicle.speed
        vehicle.increaseSpeed(by: 10)
        vehicle.speed
    } else{
        "This is not a vehicle"
    }
}

increaseSpeedifVehicle(obj: bike)
bike.speed

extension Int{
    func AddTwo()-> Int{
        self + 2
    }
}

let num = 0
num.AddTwo()

class MyDouble{
    let value: Double
    init(value: Double){
        self.value = value
    }
}

let num2 = MyDouble(value: 20)
num2.value

let x = 10
let y = 20
let z = x * y

func perform(
    _  op: (Int, Int)-> Int,
    on lhs: Int,
    and rhs: Int
) -> Int {
    op(lhs, rhs)
}

perform(+, on: 10, and: 20)
perform(-, on: 10, and: 20)
perform(*, on: 10, and: 20)
perform(/, on: 20, and: 10)

