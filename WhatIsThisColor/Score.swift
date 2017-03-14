//
//  Score.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 14/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import Foundation

public struct Score{
    
    var points: Int
    
    init(){
        points = 0
    }
    
    mutating func increasePoints(){
        points += 1
    }
    
    mutating func fail(){
        points = 0
    }
    
}
