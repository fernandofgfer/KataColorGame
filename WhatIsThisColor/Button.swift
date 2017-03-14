//
//  Button.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 14/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import Foundation
import UIKit

public struct Button{
    
    var color: UIColor
    
    init(newColor: UIColor){
        self.color = newColor
    }
    
    mutating func changeColor(newColor: UIColor){
        self.color = newColor
    }
    
}
