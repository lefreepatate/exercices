class Vehicule {
  private  var registrationNumber: Int {
        get {
            return self.registrationNumber
        }
        set{
            self.registrationNumber = newValue
        }
    }
    private var year: Int {
        get {
            return self.year
        }
        set{
            self.year = newValue
        }
    }
    private var price: Int {
        get {
            return self.price
        }
        set{
            self.price = newValue
        }
    }
    func startVehicule() {
    }
    func accelerate(){
    }
    func toString(){
        print("This vehicule has the \(registrationNumber) registration number, created in \(year) and costs \(price)$.")
    }
}
class Car: Vehicule{
    override func startVehicule(){
        print("Car is starting")
    }
    override func accelerate() {
        print("The car is accelerating")
    }
}
class Truck: Vehicule{
    override func startVehicule(){
        print("Starting truck")
    }
    override func accelerate() {
        print("The Trcuck is accelerating")
    }
}


