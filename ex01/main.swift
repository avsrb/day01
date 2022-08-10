import Foundation

func subject() {
    print("--Subject--")
    let card1 = Card(c : Color.Spade, v : Value.Ace)
    print(card1)
    //(1, Spade)
    let card2 = Card(c : Color.Diamond, v: Value.Two) 
    print(card2)
    //(2, Diamond)
    print(card1 == card2)
    // false 
    print("-----------")
}

subject()

let allColors = Color.allColors
let allValues = Value.allValues

let card1 = Card(c: Color.Spade, v: Value.Five)

print("card1: \(card1)")

let card2 = Card(c: Color.Club, v: Value.Ace)
let card3 = Card(c: Color.Club, v: Value.Ace)

print("card2: \(card2)")
print("card3: \(card3)")

print("card1 == card2: \(card1 == card2)")
print("card2 == card3: \(card2 == card3)")


print(card2.isEqual(to: allColors))
print(card2.isEqual(to: card3))