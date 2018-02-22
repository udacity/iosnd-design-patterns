//: Playground - noun: a place where people can play

import UIKit

class Person {
    var name: String?
}

class Musician: Person {
    var yearsTrained: Int?
}

class Guitarist: Musician {
    enum GuitarType {
        case acoustic, electric
    }
    
    var preferredGuitarType: GuitarType?
}

class LeadGuitarist: Guitarist {
}
