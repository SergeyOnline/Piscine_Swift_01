//
//  Deck.swift
//  ex02
//
//  Created by Shira Broderick on 6/15/21.
//  Copyright © 2021 Shira Broderick. All rights reserved.
//

import Foundation


func createArrayWithColor(_ c: Color) -> [Card] {
	var arr: [Card] = []
	for val in Value.allValues {
		if val.rawValue == 15 {
			break
		}
		arr.append(Card(color: c, value: val))
	}
	return arr
}

class Deck: NSObject {

	
	var cards: [Card]
	var disards: [Card] = []
	var outs: [Card] = []
	
	static let allSpades = createArrayWithColor(.spade)
	static let allDiamonds = createArrayWithColor(.diamond)
	static let allHearts = createArrayWithColor(.heart)
	static let allClubs = createArrayWithColor(.club)
	
	static let allCards = Deck.allClubs + Deck.allDiamonds + Deck.allHearts + Deck.allSpades
	
	init(mixed: Bool) {
		self.cards = Deck.allCards
		self.cards.append(Card(color: .heart, value: .jocker))
		self.cards.append(Card(color: .club, value: .jocker))
		if mixed == true {
			self.cards.myShuffle()
		}
		super.init()
	}
	
	override var description: String {
		return cards.description
	}
	
	func draw() -> Card? {
		var card: Card? = nil
		if cards.isEmpty == false {
			card = cards.remove(at: 0)
			print(card!.description)
			outs.append(card!)
		} else {
			print("Cards is empty")
		}
		return card
	}
	
	func fold(c: Card) {
		if outs.contains(c) == true {
			let index = outs.firstIndex(of: c)
			disards.append(outs.remove(at: index!))
		}
	}
	
	func printOuts() {
		if outs.isEmpty {
			print("Outs is empty")
		}
		for v in outs {
			print("OUT: \(v.description)")
		}
		
	}
	
	func printDisards() {
		if disards.isEmpty {
			print("disards is empty")
		}
		for v in disards {
			print("DIS: \(v.description)")
		}
	}
	
}

extension Array {
	mutating func myShuffle() -> () {
		for _ in 0..<self.count {
			let randomNum = Int(arc4random_uniform(UInt32(self.count)))
			let tmp = self[0]
			self[0] = self[randomNum]
			self[randomNum] = tmp
		}
	}
}
