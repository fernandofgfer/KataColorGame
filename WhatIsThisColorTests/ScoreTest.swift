//
//  ScoreTest.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 15/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import XCTest
@testable import WhatIsThisColor

class ScoreTest: XCTestCase {
    
    var score: Score! = nil
    
    override func setUp() {
        super.setUp()
        score = Score()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testInitNotNilScore(){
        XCTAssertNotNil(score, "The initialization score method works")
    }
    
    func testIncreasePointNotEqualToPreviusPoint(){
        let point = score.points
        score.increasePoints()
        XCTAssertNotEqual(point, score.points)
    }
    
    func testIncreasePoint(){
        let point = score.points
        score.increasePoints()
        XCTAssertEqual((point + 1), score.points)
    }
    
    func testFailEqualZero(){
        score.fail()
        XCTAssertEqual(score.points, 0)
    }
    
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        score = nil
        super.tearDown()
    }
    
}
