//: Playground - noun: a place where people can play

import UIKit
import Foundation

class Rectangle {
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

class Square: Rectangle {
    
    init(side: Int) {
        super.init(width: side, height: side)
    }
    
    override var width: Int {
        didSet {
            guard oldValue != width else { return }
            height = width
        }
    }
    
    override var height: Int {
        didSet {
            guard oldValue != height else { return }
            width = height
        }
    }
}


func printArea(rectangle: Rectangle) {
    rectangle.width = 3
    rectangle.height = 4
    print(rectangle.area) // Should print 12 (4 * 3)
}

let rectangle = Rectangle(width: 1, height: 1)
printArea(rectangle: rectangle)

let square = Square(side: 1)
printArea(rectangle: square)
