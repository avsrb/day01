import Foundation

class Deck: NSObject {
    static var allSpades: [Card] = Value.allValues.map({Card(c: Color.Spade, v: $0)})
    static var allHearts: [Card] = Value.allValues.map({Card(c: Color.Heart, v: $0)})
    static var allDiamonds: [Card] = Value.allValues.map({Card(c: Color.Diamond, v: $0)})
    static var allClubs: [Card] = Value.allValues.map({Card(c: Color.Club, v: $0)})

	static let allCards = allSpades + allDiamonds + allHearts + allClubs
}