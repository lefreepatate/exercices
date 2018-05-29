
class Circle: CustomStringConvertible {
    var x:Double
    var y:Double
    var center_x:Double
    var center_y:Double
    init(x: Double, y: Double,center_x:Double, center_y:Double){
        self.x = x
        self.y = y
        self.center_x = center_x
        self.center_y = center_y
    }
    var abscissa:String  {
        return "Donner l'abscisse du centre: \(x)"
    }
    var ordered: String {
        return "Donner l'ordonné du centre: \(y)"
    }
    var description:String{
        return "\nCercle(\(x), \(y), \(x + y))"
    }
    var radius:String {
        return "Donner le rayon : \(x + y)"
    }

    var perimeter: Double {
        return 2 * Double.pi * (x + y)
    }
    
    var getPerimeter:String {
        get {
            return "\nLe perimètre est :\(perimeter)"
        }
    }
    var squared:Double {
        return  (x + y) * (x + y)
    }
    var areaCircle : String{
        get {
            return "La surface est :\(squared * Double.pi)\n"
        }
    }
    var point:String{
        if (x - center_x) * (x - center_x) + (y - center_y) * (y - center_y) <= (x + y) * (x + y) {
            return "\nDonner un point :\n\nX :\(x)\nY : \(y)\nPOINT(\(x),\(y))\n\nLe point appartient au cercle"
        }else {
            return "\nDonner un point :\n\nX :\(x)\nY : \(y)\nPOINT(\(x),\(y))\n\nLe point n'appartient pas au cercle"
        }
    }
}
var unCercle = Circle(x:1,y:2,center_x:1, center_y:2)
print(unCercle.abscissa)
print(unCercle.ordered)
print(unCercle.radius)
print(unCercle)
print(unCercle.getPerimeter)
print(unCercle.areaCircle)
print(unCercle.point)
var unAutreCercle = Circle(x:2,y:3,center_x:6, center_y:7)
print(unAutreCercle.point)
