//
//  GameViewPresenterTest.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 15/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import XCTest
@testable import WhatIsThisColor

class GameViewPresenterTest: XCTestCase {
    
    var gameViewPresenter: GameViewPresenter!
    var gameViewController: GameViewController!
    
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        gameViewController = storyboard.instantiateViewController(withIdentifier: "GameViewController") as! GameViewController
        let _ = gameViewController.view
        gameViewPresenter = gameViewController.presenter
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        gameViewPresenter = nil
        super.tearDown()
    }
    
    
    //MARK: Change buttons color
    
    func testSetButtonColor(){
        
        gameViewPresenter.setButtonColor()
        XCTAssertTrue(gameViewPresenter.button1.color != gameViewPresenter.button2.color && gameViewPresenter.button1.color != gameViewPresenter.button3.color && gameViewPresenter.button1.color != gameViewPresenter.button4.color && gameViewPresenter.button2.color != gameViewPresenter.button3.color && gameViewPresenter.button2.color != gameViewPresenter.button4.color && gameViewPresenter.button3.color != gameViewPresenter.button4.color)
    }
    
    
    //MARK: Update Score
    
    func testUpdateScoreTrue(){
        let score = gameViewPresenter.score.points
        gameViewPresenter.updateScore(result: true)
        XCTAssertEqual(gameViewPresenter.score.points, (score + 1))
    }
    
    func testUpdateScoreLevelTrue(){
        gameViewPresenter.score.points = 9
        gameViewPresenter.updateScore(result: true)
        XCTAssertEqual(gameViewPresenter.level.level,2)
    }
    
    func testUpdateScoreFalse(){
        gameViewPresenter.updateScore(result: false)
        XCTAssertEqual(gameViewPresenter.score.points, 0)
    }
    
    func testUpdateScoreLevelFalse(){
        gameViewPresenter.updateScore(result: false)
        XCTAssertEqual(gameViewPresenter.level.level, 1)
    }
    
    
    //MARK: Reload Board Test
    
    func testReloadBoardColorNotNul(){
        gameViewPresenter.realoadBoard()
        XCTAssertNotNil(gameViewPresenter.color)
    }
    
    func testReloadBoardButtonsLevel2(){
        gameViewPresenter.level.level = 2
        gameViewPresenter.realoadBoard()
        XCTAssertTrue(gameViewPresenter.button1.color != gameViewPresenter.button2.color && gameViewPresenter.button1.color != gameViewPresenter.button3.color && gameViewPresenter.button1.color != gameViewPresenter.button4.color && gameViewPresenter.button2.color != gameViewPresenter.button3.color && gameViewPresenter.button2.color != gameViewPresenter.button4.color && gameViewPresenter.button3.color != gameViewPresenter.button4.color)
    }
    
    func testReloadBoardButtonsLevel3(){
        gameViewPresenter.level.level = 3
        gameViewPresenter.realoadBoard()
        XCTAssertTrue(gameViewPresenter.button1.color != gameViewPresenter.button2.color && gameViewPresenter.button1.color != gameViewPresenter.button3.color && gameViewPresenter.button1.color != gameViewPresenter.button4.color && gameViewPresenter.button2.color != gameViewPresenter.button3.color && gameViewPresenter.button2.color != gameViewPresenter.button4.color && gameViewPresenter.button3.color != gameViewPresenter.button4.color)
    }
    
    
    
    //MARK: Init Test -> Not Nil
    
    func testColorDictionaryNotNil(){
        XCTAssertEqual(gameViewPresenter.colorDictionary, ["Red" : WitcColors.colorRed, "Green" : WitcColors.colorGreen, "Yellow" : WitcColors.colorYellow, "Blue" : WitcColors.colorBlue])
    }
    
    func testLiteralArrayNotNil(){
        XCTAssertEqual(gameViewPresenter.literalsArray, ["Red", "Green", "Yellow", "Blue"])
    }
    
    func testColorArrayNotNil(){
        XCTAssertEqual(gameViewPresenter.colorArray, [WitcColors.colorRed, WitcColors.colorGreen, WitcColors.colorYellow, WitcColors.colorBlue])
    }
    
    func testBackgroundColorArrayNotNil(){
        XCTAssertEqual(gameViewPresenter.backgroundColorArray, [ WitcColors.colorBrown, WitcColors.colorPurple, WitcColors.colorOrange, WitcColors.colorBlack])
    }
    
    func testLevelNotNil(){
        XCTAssertNotNil(gameViewPresenter.level)
    }
    
    func testScoreNotNil(){
        XCTAssertNotNil(gameViewPresenter.score)
    }
    
    func testColorNotNil(){
        XCTAssertNotNil(gameViewPresenter.color)
    }
    
    func testButton1NotNil(){
        XCTAssertNotNil(gameViewPresenter.button1)
    }
    
    func testButton2NotNil(){
        XCTAssertNotNil(gameViewPresenter.button2)
    }
    
    func testButton3NotNil(){
        XCTAssertNotNil(gameViewPresenter.button3)
    }
    
    func testButton4NotNil(){
        XCTAssertNotNil(gameViewPresenter.button4)
    }
}
