//
//  main.swift
//  ex01
//
//  Created by Shira Broderick on 6/15/21.
//  Copyright © 2021 Shira Broderick. All rights reserved.
//

import Foundation

let allColors = Color.allColors
let allValues = Value.allValues

let cardOne = Card(color: Color.heart, value: Value.two)

print("cardOne - \(cardOne)")

let cardTwo = Card(color: Color.diamond, value: Value.three)
let cardThree = Card(color: Color.diamond, value: Value.three)

print("cardTwo - \(cardTwo)")
print("cardThree - \(cardThree)")

print("cardOne = cardTwo? - \(cardOne == cardTwo)")
print("cardTwo == cardThree? - \(cardTwo == cardThree)")


print(cardTwo.isEqual(to: allColors))
print(cardTwo.isEqual(to: cardThree))

