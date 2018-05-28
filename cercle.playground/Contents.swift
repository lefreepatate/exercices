class Point {
    var x:Double
    var y:Double
    init(x: Double, y: Double){
        self.x = x
        self.y = y
    }
    var abscissa:String  {
        return "Donner l'abscisse du centre: \(x)"
    }
    var ordered: String {
        return "Donner l'ordonné du centre: \(y)"
    }
    var description:String{
        return "Cercle(\(x), \(y), \(x + y))"
    }
    var radius:String {
        return "Donner le rayon : \(x + y)"
    }
    var perimeter: Double {
        return 2 * π * (x + y)
    }
    let π = 3.1415
    var getPerimeter:String {
        get {
            return "Le perimètre est :\(perimeter)"
        }
    }
    var squared:Double {
        return  (x + y) * (x + y)
    }
    var areaCircle : String{
        get {
            return "La surface est :\(squared * π)"
        }
    }
    
}
var unCercle = Point(x:1,y:2)
print(unCercle.abscissa)
print(unCercle.ordered)
print(unCercle.radius)
print(unCercle.description)
print(unCercle.getPerimeter)
print(unCercle.areaCircle)