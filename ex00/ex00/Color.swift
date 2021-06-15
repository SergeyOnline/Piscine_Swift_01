//
//  Color.swift
//  ex00
//
//  Created by Shira Broderick on 6/15/21.
//  Copyright © 2021 Shira Broderick. All rights reserved.
//
//
import Foundation

enum Color: String {
	case hearts = "Herts"
	case diamonds = "Diamonds"
	case clubs = "Clubs"
	case spades = "Spades"
	
	static let allColors: [Color] = [.hearts, .diamonds, .clubs, .spades]
	
//	static func allValues() -> [Color] {
//		let arr: [Color] = [.hearts, .diamonds, .clubs, .spades]
//		return arr
//	}
}
