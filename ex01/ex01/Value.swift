//
//  Value.swift
//  ex00
//
//  Created by Shira Broderick on 6/15/21.
//  Copyright © 2021 Shira Broderick. All rights reserved.
//

import Foundation

enum Value: Int {
	case empty = 1
	case two = 2
	case three = 3
	case four = 4
	case five = 5
	case six = 6
	case seven = 7
	case eight = 8
	case nine = 9
	case ten = 10
	case jack = 11
	case queen = 12
	case king = 13
	case ace = 14
	case jocker = 15
	
	static let allValues: [Value] = [.empty, .two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king, .ace, .jocker]
}
