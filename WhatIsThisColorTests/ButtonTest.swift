//
//  ButtonTest.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 15/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import XCTest
@testable import WhatIsThisColor

class ButtonTest: XCTestCase {
    
    var button: Button! = nil
    
    override func setUp() {
        super.setUp()
        
        button = Button(newColor: UIColor.white)
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    
    func testInitNotNilButton(){
        button = nil
        button = Button(newColor: UIColor.white)
        XCTAssertNotNil(button, "The initialization button method works")
    }
    
    
    func testInitColorEqualButton(){
        button = Button(newColor: UIColor.red)
        XCTAssertEqual(button.color, UIColor.red)
    }
    
    func testInitColorNotEqualButton(){
        button = Button(newColor: UIColor.red)
        XCTAssertNotEqual(button.color, UIColor.white)
    }
    
    func testChangeColorEqualButton(){
        button.changeColor(newColor: UIColor.brown)
        XCTAssertEqual(button.color, UIColor.brown)
    }
    
    func testChangeColorNotEqualButton(){
        button.changeColor(newColor: UIColor.brown)
        XCTAssertNotEqual(button.color, UIColor.orange)
    }


    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        button = nil
        super.tearDown()
    }
    
    

    
}
