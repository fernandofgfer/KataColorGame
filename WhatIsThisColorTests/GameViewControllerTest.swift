//
//  GameViewControllerTest.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 15/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import XCTest
@testable import WhatIsThisColor

class GameViewControllerTest: XCTestCase {
    
    var gameViewController: GameViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        gameViewController = storyboard.instantiateViewController(withIdentifier: "GameViewController") as! GameViewController
        let _ = gameViewController.view
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    //MARK: IBOutlets test
    
    func testButton1NotNil(){
        XCTAssertNotNil(gameViewController.button1)
    }
    
    func testButton2NotNil(){
        XCTAssertNotNil(gameViewController.button2)
    }
    
    func testButton3NotNil(){
        XCTAssertNotNil(gameViewController.button3)
    }
    
    func testButton4NotNil(){
        XCTAssertNotNil(gameViewController.button4)
    }
    
    func testColorLabelNotNil(){
        XCTAssertNotNil(gameViewController.colorLabel)
    }

    func testScoreLabelNotNil(){
        XCTAssertNotNil(gameViewController.scoreLabel)
    }
    
    func testBackgroundViewNotNil(){
        XCTAssertNotNil(gameViewController.backgroundView)
    }
    
    func testButtonsViewNotNil(){
        XCTAssertNotNil(gameViewController.buttonsView)
    }
}
