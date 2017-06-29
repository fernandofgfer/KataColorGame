//
//  GameViewController.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 14/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import Foundation
import UIKit

class GameViewController: UIViewController, GameProtocol{

    @IBOutlet var backgroundView: UIView!
    @IBOutlet var buttonsView: UIView!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var colorLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    var presenter: GameViewPresenter!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = GameViewPresenter()
        presenter.view = self
        loadButtons()
    }
    
    func loadButtons(){

        button1.layer.cornerRadius = 10.0
        button1.layer.masksToBounds = true
        
        button2.layer.cornerRadius = 10.0
        button2.layer.masksToBounds = true
        
        button3.layer.cornerRadius = 10.0
        button3.layer.masksToBounds = true
        
        button4.layer.cornerRadius = 10.0
        button4.layer.masksToBounds = true
        
        backgroundView.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        updateScreen()
    }
    

    func updateScreen() {
        button1.backgroundColor = presenter.getButton1Color()
        button2.backgroundColor = presenter.getButton2Color()
        button3.backgroundColor = presenter.getButton3Color()
        button4.backgroundColor = presenter.getButton4Color()
        colorLabel.text = presenter.getLiteralColor()
        colorLabel.textColor = presenter.getColorColor()
        //FIXME: Cambiar el acceso a esos datos
        scoreLabel.text = "Your Score: " + String(presenter.score.points)
        
    }
    
    //MARK: Actions
    
    @IBAction func button1Action(_ sender: Any) {
        presenter.buttonPressed(numberOfButton: 0)
    }
    @IBAction func button2Action(_ sender: Any) {
        presenter.buttonPressed(numberOfButton: 1)
    }
    @IBAction func button3Action(_ sender: Any) {
        presenter.buttonPressed(numberOfButton: 2)
    }
    @IBAction func button4Action(_ sender: Any) {
        presenter.buttonPressed(numberOfButton: 3)
    }
    
}
