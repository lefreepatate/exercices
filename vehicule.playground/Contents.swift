class Vehicule {
    var registrationNumber: Int?
    var year: Int = 0
    var price: Int = 0
    func startCar() {
    }
    func accelerate(){
    }
    func toString(){
        print("This car has the \(registrationNumber) registration number, created in \(year) and costs \(price)$.")
    }
}
class car: Vehicule{
    override func startCar(){
        print("Car is starting")
    }
}
class truck: Vehicule{
    override func startCar(){
        print("Starting truck")
    }
}

