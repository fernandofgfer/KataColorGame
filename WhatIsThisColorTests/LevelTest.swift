//
//  LevelTest.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 15/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import XCTest
@testable import WhatIsThisColor

class LevelTest: XCTestCase {
    
    var level: Level! = nil
    
    override func setUp() {
        super.setUp()
        level = Level()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testInitNotNilLevel(){
        XCTAssertNotNil(level, "The initialization level method works")
    }
    
    func testInitLevel(){
        XCTAssertEqual(level.level, 1)
    }
    
    func testIncreaseLevel(){
        level.increaseLevel()
        XCTAssertEqual(level.level, 2)
    }
    
    func testIncreaseLevelLimit(){
        
        for _ in 1...1000{
             level.increaseLevel()
        }
       
        XCTAssertEqual(level.level, 3)
    }
    
    func testFailLevel(){
        level.fail()
        XCTAssertEqual(level.level, 1)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        level = nil
        super.tearDown()
    }
    
}
