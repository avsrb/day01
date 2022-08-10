enum Color: String, CaseIterable {
    case Spade = "red"
    case Heart = "green"
    case Diamond = "blue"
    case Club = "width"
    
    static let allColors: [Color] = Color.allCases
}
