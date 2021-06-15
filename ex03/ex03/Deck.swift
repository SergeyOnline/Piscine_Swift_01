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

	static let allSpades = createArrayWithColor(.spade)
	static let allDiamonds = createArrayWithColor(.diamond)
	static let allHearts = createArrayWithColor(.heart)
	static let allClubs = createArrayWithColor(.club)
	
	static let allCards = Deck.allClubs + Deck.allDiamonds + Deck.allHearts + Deck.allSpades
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
