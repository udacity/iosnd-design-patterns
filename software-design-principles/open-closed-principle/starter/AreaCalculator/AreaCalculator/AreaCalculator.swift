//
//  AreaCalculator.swift
//  AreaCalculator
//
//  Created by Christopher Arriola on 1/24/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import Foundation

protocol Shape {
}

struct Rectangle: Shape {
    let width: Int
    let height: Int
}

class AreaCalculator {
    func computeArea(shape: Shape) -> Double {
        if let rectangle = shape as? Rectangle {
            return Double(rectangle.width * rectangle.height)
        }
        return 0
    }
}
