class Rectangle: CustomStringConvertible {
    var length: Int
    var width: Int
    init(width:Int, length:Int){
        self.width = width
        self.length = length
    }
    var perimeter: Int {
        get {
            return 2 * (length + width)
        }
    }
    var area: Int{
        get{
            return length * width
        }
    }
    var description: String {
        return "Donner la longueur du rectangle : \(length)\nDonner la largeur du rectangle : \(width)\nLe périmètre est de \(perimeter)\nLa surface est de \(area)"
    }
    var isSquare: String{
        if length != width {
            return "Ce n'est pas un carré\n\n"
        }
        else{
            return "C'est un carré"
        }
    }
    var showRectangle: String{
        return "Longueur : [\(length)] - Largeur : [\(width)] - Périmètre : [ \(perimeter) ] - Aire : [\(area)] - \(isSquare)"
    }
}
var rectangle1 = Rectangle(width:3, length:4)
rectangle1.perimeter
print(rectangle1.description)
print(rectangle1.isSquare)
var rectangle2 = Rectangle(width:5, length:5)
print(rectangle2.description)
print(rectangle2.isSquare)
print(rectangle2.showRectangle)
