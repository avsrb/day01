import Foundation

class Deck: NSObject {
    static var allSpades: [Card] = Value.allValues.map({Card(c: Color.Spade, v: $0)})
    static var allHearts: [Card] = Value.allValues.map({Card(c: Color.Heart, v: $0)})
    static var allDiamonds: [Card] = Value.allValues.map({Card(c: Color.Diamond, v: $0)})
    static var allClubs: [Card] = Value.allValues.map({Card(c: Color.Club, v: $0)})

	static var allCards = allSpades + allDiamonds + allHearts + allClubs

    var cards: [Card]
    var disards: [Card]
    var outs: [Card]

    
    init(sorted: Bool) {
        if sorted {
            cards = Deck.allCards
        } else {
            cards = Deck.allCards.shuffle()
        }
        disards = Array()
        outs = Array()
    }

    override var description: String {
        return cards.description
    }
    
    func draw() -> Card? {
        let tmp: Card?
        if (!cards.isEmpty) {
            tmp = cards.removeFirst()
            outs.append(tmp!)
        } else {
            tmp = nil
        }
        return tmp
    }
    
    func fold(c: Card) {
        if outs.contains(c) {
            disards.append(c)
            outs.remove(at: outs.firstIndex(of: c)!)
        }
    }
}

extension Array {
    func shuffle() -> Array {
        var list = self
        for i in 0..<(list.count - 1) {
            let j = Int(arc4random_uniform(UInt32(list.count - i))) + i
            list.swapAt(i, j)
        }
        return list
    }
}

