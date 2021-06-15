//
//  main.swift
//  ex01
//
//  Created by Shira Broderick on 6/15/21.
//  Copyright © 2021 Shira Broderick. All rights reserved.
//

import Foundation



let deck = Deck()

var arr:[Card] = Deck.allCards
arr.myShuffle()

for card in arr {
	print(card)
}


