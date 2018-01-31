//: Playground - noun: a place where people can play

import UIKit
import Foundation

protocol Shape {
    var area: Int { get }
}

class Rectangle: Shape {
    var width: Int
    var height: Int
    
    var area: Int {
        return width * height
    }
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

class Square: Shape {
    var side: Int
    
    var area: Int {
        return side * side
    }
    
    init(side: Int) {
        self.side = side
    }
}


func printArea(shape: Shape) {
    print(shape.area)
}

let rectangle = Rectangle(width: 3, height: 4)
printArea(shape: rectangle)

let square = Square(side: 3)
printArea(shape: square)
