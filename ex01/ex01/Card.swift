//
//  Card.swift
//  ex01
//
//  Created by Shira Broderick on 6/15/21.
//  Copyright © 2021 Shira Broderick. All rights reserved.
//

import Foundation

class Card: NSObject {

	var color: Color
	var value: Value
	
	
	init(color: Color, value: Value) {
		self.color = color
		self.value = value
		super.init()
	}
	
	override var description: String { return "(\(self.value.rawValue), \(self.color.rawValue))" }
	
	static func == (left: Card, right: Card) -> Bool {
		return left.color == right.color && left.value == right.value
    }
	
	override func isEqual(to object: Any?) -> Bool {
		let tmp = object as? Card
		if tmp == nil {
			return false
		}
		return (self == (object as! Card))
	}
}
