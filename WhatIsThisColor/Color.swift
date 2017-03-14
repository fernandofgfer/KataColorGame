//
//  Color.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 14/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import Foundation
import UIKit

public struct Color{
    
    var color: UIColor
    var literal: String
    
    init(color: UIColor, literal: String){
        self.color = color
        self.literal = literal
    }
    
    mutating func changeColor(color: UIColor, literal: String){
        self.color = color
        self.literal = literal
    }
    
}
