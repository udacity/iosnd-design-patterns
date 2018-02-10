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

class MusicianDecorator: Musician {
    var instrument: Instrument { return decoratedMusician.instrument }
    
    private let decoratedMusician: Musician
    
    init(_ decoratedMusician: Musician) {
        self.decoratedMusician = decoratedMusician
    }
    
    func play() {
        decoratedMusician.play()
    }
}

class GuitarDecorator: MusicianDecorator {
    override func play() {
        super.play()
        print(" and play the \(Instrument.guitar)")
    }
}

class DrummerDecorator: MusicianDecorator {
    override func play() {
        super.play()
        print(" and play the \(Instrument.drums)")
    }
}

let drummerAndGuitarist = DrummerDecorator(Guitarist())
drummerAndGuitarist.play()

