class Vehicle {
   var registrationNumber: String {
        get {
            return self.registrationNumber
        }
    }
     var year: Int {
        get {
            return self.year
        }
    }
     var price: Int {
        get {
            return self.price
        }
    }
    func startVehicle() {
    }
    func accelerate(){
    }
    public var description: String {
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
}

