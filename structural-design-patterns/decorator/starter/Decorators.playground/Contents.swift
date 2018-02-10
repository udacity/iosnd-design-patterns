//: Playground - noun: a place where people can play
    
enum Instrument {
    case guitar
    case drums
    case bass
    // ...
}

protocol Musician {
    var instrument: Instrument { get }
    func play()
}

extension Musician {
    func play() {
        print("plays the \(instrument)")
    }
}

class Guitarist: Musician {
    var instrument: Instrument { return .guitar }
}

class Drummer: Musician {
    var instrument: Instrument { return .drums }
}

