enum Value: Int, CaseIterable {
    case Ace = 1, Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King
    
    static let allValues: [Value] = Value.allCases
}
