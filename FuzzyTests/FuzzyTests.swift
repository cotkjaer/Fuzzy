//
//  FuzzyTests.swift
//  FuzzyTests
//
//  Created by Christian Otkjær on 23/11/2017.
//  Copyright © 2017 Silverback IT. All rights reserved.
//

import XCTest
@testable import Fuzzy

class FuzzyTests: XCTestCase
{
    func test_double()
    {
        let three = 3.0
        let threeAndABit = three + 2 * Double.ulpOfOne
        
        XCTAssertFalse(three == threeAndABit)
        
        XCTAssert(three ≈≈ threeAndABit)
        XCTAssert(three ≈≈ three)
    
        XCTAssertFalse(-three ≈≈ threeAndABit)
        XCTAssertFalse(three ≈≈ threeAndABit + 0.0001)

    }
    
}
