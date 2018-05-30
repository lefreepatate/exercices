class Person {
    private var name:String
    private var firstName:String
    private var dateOfBirth:String
    public init(name:String, firstName:String, dateOfBirth:String){
        self.name = name
        self.firstName = firstName
        self.dateOfBirth = dateOfBirth
    }
    func description() {
        print("\nName : \(name)\nFirst Name : \(firstName)\nDate of Birth : \(dateOfBirth)")
    }
}
class Employee: Person {
    var salary:Int
    init(name:String, firstName:String, dateOfBirth:String, salary:Int){
        self.salary = salary
        super.init(name:name, firstName:firstName, dateOfBirth:dateOfBirth)
    }
    override func description(){
        super.description()
        print("Salary : \(salary) $")
    }
}

class Boss : Employee{
    var service:String
    init(name:String, firstName:String, dateOfBirth:String,salary:Int, service:String){
        self.service = service
        super.init(name:name, firstName:firstName, dateOfBirth:dateOfBirth, salary:salary)
    }
    override func description(){
        super.description()
        print("Service : \(service)")
    }
}

class Director: Boss {
    var company:String
    init(name:String, firstName:String, dateOfBirth:String,company:String,service:String, salary:Int){
        self.company = company
        super.init(name:name,firstName:firstName,dateOfBirth:dateOfBirth,salary:salary, service:service)
    }
    override func description(){
        super.description()
        print("Company : \(company)")
    }
}
let table: [Person] = [
        Employee(name: "Employé1", firstName:"Jean", dateOfBirth:"01 janvier 1980", salary:2660),
        Employee(name: "Employé2", firstName:"Paul", dateOfBirth:"01 février 1982", salary:1840),
        Employee(name: "Employé3", firstName:"Nicolas", dateOfBirth:"01 mars 1989", salary:2350),
        Employee(name: "Employé4", firstName:"Mathieu", dateOfBirth:"01 avril 1995", salary:1500),
        Employee(name: "Employé5", firstName:"Laurent", dateOfBirth:"01 mai 1987", salary:2500),
        Boss(name:"Boss1", firstName:"John", dateOfBirth:"07 avril 1975",salary:6500, service:"Directeur commercial"),
        Boss(name:"Boss2", firstName:"Eliot", dateOfBirth:"19 juin 1983",salary:5400, service:"Directeur Marketing"),
        Director(name:"Cook", firstName:"Tim", dateOfBirth: "1er novembre 1960",company: "Apple", service: "Director", salary: 8500000)
]
/* var unePersonne = Person(name:"Garcia", firstName: "Carlos", dateOfBirth:"07/05/1980")
var unEmployé = Employee(name: "Dupont",  firstName: "Jacques", dateOfBirth: "02 Janvier 1976",salary: 3000)
var leBoss = Boss( name: "Smith", firstName: "James", dateOfBirth:"13 Juin 1958", salary: 20000, service: "Directeur Commercial")
var leDirecteur = Director(name: "Cook", firstName: "Tim", dateOfBirth: "1er novembre 1960",company: "Apple", service: "Director", salary: 8500000)
unePersonne.description()
unEmployé.description()
leBoss.description()
leDirecteur.description()*/
print("\n------------ AFFICHAGE À L'AIDE DE 'FOR' ------------\n")
for Person in table {
    print(Person.description())
}
print("\n------------ AFFICHAGE À L'AIDE DE 'FOR EACH' + ESSAI REVERSED ------------\n")

table.reversed().forEach { Person in
    print (Person.description())
}


