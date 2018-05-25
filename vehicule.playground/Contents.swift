class Vehicle: CustomStringConvertible {
    var registrationNumber = 0
    var year: Int
    var price: Int
    static var numberOfCars = 0
    init(year: Int, price: Int) {
        Vehicle.numberOfCars += 1
        registrationNumber = Vehicle.numberOfCars
    self.year = year
    self.price = price
    }

    func startVehicle() {
        }
    func accelerate(){
        }
    var description: String {
        return "This vehicle has the \(registrationNumber) registration number, created in \(year) and costs \(price)$."
    }

}
class Car: Vehicle{
    
    override func startVehicle(){
        print("Car is starting")
    }
    override func accelerate() {
        print("The car is accelerating")
    }
}
class Truck: Vehicle{
    override func startVehicle(){
        print("Starting truck")
    }
    override func accelerate() {
        print("The truck is accelerating")
    }
    static func beep(){
        print("beep")
}
}
var myCar = Car(year: 2008, price: 5000)
print(myCar)
var myCar2 = Car(year: 2010, price: 4500)
print(myCar2)
var myTruck = Truck(year: 2012, price: 12000)
myTruck.accelerate()
Truck.beep()
