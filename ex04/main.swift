import Foundation

func test() {
    let sorted = Deck(sorted: true)
    let mixed = Deck(sorted: false)

    print("--- Create deck ---")
    print("Sorted = \(sorted.description)\n")
    print("Mixed = \(mixed.description)\n")

    print("--- Draw card ---")

    guard let one = sorted.draw() else {
        return
    }

    guard let two = sorted.draw() else {
        return
    }

    print("Draw one card from sorted deck: \(one.description))")
    print("Draw another card from sorted deck: \(two.description)")
    print("Outs after draw call = \(sorted.outs)")
    print()
    print("Cards after draw call = \(sorted.cards)")
    print()

    print("--- Fold card ---")
    let card1 = sorted.outs[0]
    sorted.fold(c: card1)
    print("Disards after fold call = \(sorted.disards)")
    print("Outs after fold call = \(sorted.outs)")
    print()

    print("--- Out of Bound ---")
    var c: Card?
    for _ in 0...50 {
        c = mixed.draw()
    }
    c = mixed.draw()
    print(c!)
    c = mixed.draw() 
    c = mixed.draw()
    print(mixed.description)
}

test()