//Now create an enum Value with the raw value of the type Int which will represent the values of the cards. Add a constant static allValues of type [Value] which will represent all the possible values of a card.

enum Value: Int, CaseIterable {
    case Ace = 1, Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King
    
    static let allValues: [Value] = Value.allCases
}
