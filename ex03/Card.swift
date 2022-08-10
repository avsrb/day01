import Foundation

class Card: NSObject {
    private let color: Color
    private let value: Value
    
    init(c: Color, v: Value) {
        self.color = c
        self.value = v
    }
    
    override var description: String {
        return "\(value) \(color)"
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        if let other = object as? Card {
            return (self.color == other.color && self.value == other.value)
        } else {
            return false
        }
    }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return (lhs.color == rhs.color && lhs.value == rhs.value)
    }
}
