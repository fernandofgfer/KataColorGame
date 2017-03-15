//
//  ColorTest.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 15/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import XCTest
@testable import WhatIsThisColor

class ColorTest: XCTestCase {
    
    var color: Color! = nil
    
    override func setUp() {
        super.setUp()
        color = Color(color: UIColor.clear, literal: "test")
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testInitNotNillColor(){
        XCTAssertNotNil(color, "The initialization color method works")
    }
    
    func testInitColorColor(){
        XCTAssertEqual(color.color, UIColor.clear)
    }
    
    func testInitLiteralColor(){
        XCTAssertEqual(color.literal, "test")
    }
    
    func testChangeColorColor(){
        color.changeColor(color: UIColor.red, literal: "qwerty")
        XCTAssertEqual(color.color, UIColor.red)
    }
    
    func testChangeLiteralColor(){
        color.changeColor(color: UIColor.gray, literal: "change")
        XCTAssertEqual(color.literal, "change")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        color = nil
        super.tearDown()
    }
    
}
