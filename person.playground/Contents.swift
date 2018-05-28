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
        print("\nName : \(name)\nFirst Name : \(firstName)\nDate of Birth : \(dateOfBirth)")
    }
}
class Employee: Person {
    var salary:Int
    init(name:String, firstName:String, dateOfBirth:String, salary:Int){
        self.salary = salary
        super.init(name:name, firstName:firstName, dateOfBirth:dateOfBirth)
    }
    override func personDescription(){
        super.personDescription()
        print("Salary : \(salary)   $")
    }
}

class Boss : Employee{
    var service:String
    init(name:String, firstName:String, dateOfBirth:String,salary:Int, service:String){
        self.service = service
        super.init(name:name, firstName:firstName, dateOfBirth:dateOfBirth, salary:salary)
    }
    override func personDescription(){
        super.personDescription()
        print("Service : \(service)")
    }
}

class Director: Boss {
    var company:String
    init(name:String, firstName:String, dateOfBirth:String,company:String,service:String, salary:Int){
        self.company = company
        super.init(name:name,firstName:firstName,dateOfBirth:dateOfBirth,salary:salary, service:service)
    }
    override func personDescription(){
        super.personDescription()
        print("Company : \(company)")
    }
}

var unePersonne = Person(name:"Garcia", firstName: "Carlos", dateOfBirth:"07/05/1980")
var unEmployé = Employee(name: "Dupont",  firstName: "Jacques", dateOfBirth: "02 Janvier 1976",salary: 3000)
var leBoss = Boss( name: "Smith", firstName: "James", dateOfBirth:"13 Juin 1958", salary: 20000, service: "Directeur Commercial")
var leDirecteur = Director(name: "Cook", firstName: "Tim", dateOfBirth: "1er novembre 1960",company: "Apple", service: "Director", salary: 8500000)
unePersonne.personDescription()
unEmployé.personDescription()
leBoss.personDescription()
leDirecteur.personDescription()
