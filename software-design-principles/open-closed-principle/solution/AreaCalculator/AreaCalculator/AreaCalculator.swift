//
//  AreaCalculator.swift
//  AreaCalculator
//
//  Created by Christopher Arriola on 1/24/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import Foundation

protocol Shape {
    var area: Double { get }
}

struct Circle: Shape {
    let radius: Int
    
    var area: Double {
        return Double(radius * radius) * Double.pi
    }
}

struct Rectangle: Shape {
    let width: Int
    let height: Int
    
    var area: Double {
        return Double(width * height)
    }
}

class AreaCalculator {
    func computeArea(shape: Shape) -> Double {
        return shape.area
    }
}
