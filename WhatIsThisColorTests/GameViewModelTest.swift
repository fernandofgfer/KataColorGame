//
//  GameViewModelTest.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 15/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import XCTest
@testable import WhatIsThisColor

class GameViewModelTest: XCTestCase {
    
    var gameViewModel: GameViewModel!
    var gameViewController: GameViewController!
    
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        gameViewController = storyboard.instantiateViewController(withIdentifier: "GameViewController") as! GameViewController
        let _ = gameViewController.view
        gameViewModel = gameViewController.viewModel
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        gameViewModel = nil
        super.tearDown()
    }
    
    
    //MARK: Change buttons color
    
    func testSetButtonColor(){
        
        gameViewModel.setButtonColor()
        XCTAssertTrue(gameViewModel.button1.color != gameViewModel.button2.color && gameViewModel.button1.color != gameViewModel.button3.color && gameViewModel.button1.color != gameViewModel.button4.color && gameViewModel.button2.color != gameViewModel.button3.color && gameViewModel.button2.color != gameViewModel.button4.color && gameViewModel.button3.color != gameViewModel.button4.color)
    }
    
    
    //MARK: Update Score
    
    func testUpdateScoreTrue(){
        let score = gameViewModel.score.points
        gameViewModel.updateScore(result: true)
        XCTAssertEqual(gameViewModel.score.points, (score + 1))
    }
    
    func testUpdateScoreLevelTrue(){
        gameViewModel.score.points = 9
        gameViewModel.updateScore(result: true)
        XCTAssertEqual(gameViewModel.level.level,2)
    }
    
    func testUpdateScoreFalse(){
        gameViewModel.updateScore(result: false)
        XCTAssertEqual(gameViewModel.score.points, 0)
    }
    
    func testUpdateScoreLevelFalse(){
        gameViewModel.updateScore(result: false)
        XCTAssertEqual(gameViewModel.level.level, 1)
    }
    
    
    //MARK: Reload Board Test
    
    func testReloadBoardColorNotNul(){
        gameViewModel.realoadBoard()
        XCTAssertNotNil(gameViewModel.color)
    }
    
    func testReloadBoardButtonsLevel2(){
        gameViewModel.level.level = 2
        gameViewModel.realoadBoard()
        XCTAssertTrue(gameViewModel.button1.color != gameViewModel.button2.color && gameViewModel.button1.color != gameViewModel.button3.color && gameViewModel.button1.color != gameViewModel.button4.color && gameViewModel.button2.color != gameViewModel.button3.color && gameViewModel.button2.color != gameViewModel.button4.color && gameViewModel.button3.color != gameViewModel.button4.color)
    }
    
    func testReloadBoardButtonsLevel3(){
        gameViewModel.level.level = 3
        gameViewModel.realoadBoard()
        XCTAssertTrue(gameViewModel.button1.color != gameViewModel.button2.color && gameViewModel.button1.color != gameViewModel.button3.color && gameViewModel.button1.color != gameViewModel.button4.color && gameViewModel.button2.color != gameViewModel.button3.color && gameViewModel.button2.color != gameViewModel.button4.color && gameViewModel.button3.color != gameViewModel.button4.color)
    }
    
    
    
    //MARK: Init Test -> Not Nil
    
    func testColorDictionaryNotNil(){
        XCTAssertEqual(gameViewModel.colorDictionary, ["Red" : WitcColors.colorRed, "Green" : WitcColors.colorGreen, "Yellow" : WitcColors.colorYellow, "Blue" : WitcColors.colorBlue])
    }
    
    func testLiteralArrayNotNil(){
        XCTAssertEqual(gameViewModel.literalsArray, ["Red", "Green", "Yellow", "Blue"])
    }
    
    func testColorArrayNotNil(){
        XCTAssertEqual(gameViewModel.colorArray, [WitcColors.colorRed, WitcColors.colorGreen, WitcColors.colorYellow, WitcColors.colorBlue])
    }
    
    func testBackgroundColorArrayNotNil(){
        XCTAssertEqual(gameViewModel.backgroundColorArray, [ WitcColors.colorBrown, WitcColors.colorPurple, WitcColors.colorOrange, WitcColors.colorBlack])
    }
    
    func testLevelNotNil(){
        XCTAssertNotNil(gameViewModel.level)
    }
    
    func testScoreNotNil(){
        XCTAssertNotNil(gameViewModel.score)
    }
    
    func testColorNotNil(){
        XCTAssertNotNil(gameViewModel.color)
    }
    
    func testButton1NotNil(){
        XCTAssertNotNil(gameViewModel.button1)
    }
    
    func testButton2NotNil(){
        XCTAssertNotNil(gameViewModel.button2)
    }
    
    func testButton3NotNil(){
        XCTAssertNotNil(gameViewModel.button3)
    }
    
    func testButton4NotNil(){
        XCTAssertNotNil(gameViewModel.button4)
    }
}
