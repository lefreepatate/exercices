class Person {
    private var name:String
    private var firstName:String
    private var dateOfBirth:String
    public init(name:String, firstName:String, dateOfBirth:String){
        self.name = name
        self.firstName = firstName
        self.dateOfBirth = dateOfBirth
    }
    func personDescription() {
        print("Name : \(name)\nFirst Name : \(firstName)\n : \(dateOfBirth)")
    }
}
class Employee: Person {
    var salary:Int
    init(salary:Int, name:String, firstName:String, dateOfBirth:String){
        self.salary = salary
        super.init(name:name, firstName:firstName, dateOfBirth:dateOfBirth)
    }
    override func personDescription(){
        super.personDescription()
        print("\n Salary : \(salary)$")
    }
}

class Boss : Employee{
    var service:String
    init(service:String, name:String, firstName:String, dateOfBirth:String,salary:Int){
        self.service = service
        super.init(salary:salary, name:name, firstName:firstName, dateOfBirth:dateOfBirth)
    }
    override func personDescription(){
        super.personDescription()
        print("\n Service : \(service)")
    }
}

class Director: Boss {
    var company:String
    init(company:String, service:String, name:String, firstName:String, dateOfBirth:String,salary:Int){
        self.company = company
        super.init(service:service,name:name,firstName:firstName,dateOfBirth:dateOfBirth,salary:salary)
    }
    override func personDescription(){
        super.personDescription()
        print("\n Company : \(service)")
    }
}
