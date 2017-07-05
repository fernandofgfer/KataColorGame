//
//  GameViewModel.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 14/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import Foundation
import UIKit

class GameViewPresenter: NSObject{
    
    var colorDictionary: [String: UIColor]!
    var literalsArray: [String]!
    var colorArray: [UIColor]!
    var backgroundColorArray: [UIColor]!
    
    var firstColorArray: [UIColor]!
    weak var view: GameProtocol!
    
    var button1: Button!
    var button2: Button!
    var button3: Button!
    var button4: Button!
    
    var level: Level!
    var score: Score!
    var color: Color!
    
    init(view: GameProtocol) {
        super.init()
        self.view = view
        initValues()
    }
    
    // Init all arrays and dictionary
    func initValues(){
        
        colorDictionary = ["Red" : WitcColors.colorRed, "Green" : WitcColors.colorGreen, "Yellow" : WitcColors.colorYellow, "Blue" : WitcColors.colorBlue]
        
        literalsArray = ["Red", "Green", "Yellow", "Blue"]
        colorArray = [WitcColors.colorRed, WitcColors.colorGreen, WitcColors.colorYellow, WitcColors.colorBlue]
        backgroundColorArray = [ WitcColors.colorBrown, WitcColors.colorPurple, WitcColors.colorOrange, WitcColors.colorBlack]
        
        level = Level()
        score = Score()
        button1 = Button(newColor: UIColor.clear)
        button2 = Button(newColor: UIColor.clear)
        button3 = Button(newColor: UIColor.clear)
        button4 = Button(newColor: UIColor.clear)
        
        color = Color(color: colorArray[randRange(lower: 0, upper: 3)], literal: literalsArray[randRange(lower: 0, upper: 3)])
        
        setButtonColor()
    }
    
    // reload all variables
    func realoadBoard(){
        color = Color(color: colorArray[randRange(lower: 0, upper: 3)], literal: literalsArray[randRange(lower: 0, upper: 3)])
        switch level.level {
        case 2:
            setButtonColor()
        case 3:
            setButtonColor()
        default:
            break
        }
    }
    
    // Determine if button pressed is equal that label color
    func buttonPressed(numberOfButton: Int){
        // numberOfMaxibonsToGet < 0 ? 0 : numberOfMaxibonsToGet
        switch numberOfButton {
        case 0:
            updateScore(result: (button1.color == color.color ? true : false))
        case 1:
            updateScore(result: (button2.color == color.color ? true : false))
        case 2:
            updateScore(result: (button3.color == color.color ? true : false))
        case 3:
            updateScore(result: (button4.color == color.color ? true : false))
        default:
            break
        }
    }
    
    //
    func updateScore(result: Bool){
        
        if result == false{
            score.fail()
            level.fail()
        }
        else{
            score.increasePoints()
            if score.points % 10 == 0{
                level.increaseLevel()
            }
        }
        realoadBoard()
        self.view.updateScreen()
    }
    
    // Change button colors
    func setButtonColor(){
        var index = 0
        for i in getArrayRandom(array: [0,1,2,3]){
            switch index {
            case 0:
                button1.changeColor(newColor: colorArray[i])
            case 1:
                button2.changeColor(newColor: colorArray[i])
            case 2:
                button3.changeColor(newColor: colorArray[i])
            case 3:
                button4.changeColor(newColor: colorArray[i])
            default:
                break
            }
            index += 1
        }
    }
    
    // random int
    func randRange (lower: Int , upper: Int) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
    }
    
    // disorder a int array
    func getArrayRandom(array:[Int]) -> [Int]{
        var array = array
        var randomArray: [Int] = []
        repeat{
            randomArray.append(array.remove(at: randRange(lower: 0, upper: (array.count - 1))))
        }
        while array.count > 0
        return randomArray
    }
    
    
    //MARK: Update Screen
    func getButton1Color() -> UIColor{
        return button1.color
    }
    
    func getButton2Color() -> UIColor{
        return button2.color
    }
    
    func getButton3Color() -> UIColor{
        return button3.color
    }
    
    func getButton4Color() -> UIColor{
        return button4.color
    }
    
    func getScore() -> Int{
        return score.points
    }
    
    func getLiteralColor() -> String{
        return color.literal
    }
    
    func getColorColor() -> UIColor{
        return color.color
    }
    
}
