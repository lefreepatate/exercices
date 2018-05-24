class Vehicle {
 var registrationNumber: String
 var year: Int
 var price: Int
init(registrationNumber: String) {
self.registrationNumber = registrationNumber
}
init(year: Int){
self.year = year
}
init(price: Int){
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
}


var myCar = Car(registrationNumber: "765QFR78", year: 2008, price: 5000)
myCar.description

