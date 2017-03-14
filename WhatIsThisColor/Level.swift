//
//  Level.swift
//  WhatIsThisColor
//
//  Created by Fernando García Fernández on 14/3/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import Foundation

public struct Level{
    
    var level: Int
    
    init(){
        level = 1
    }
    
    mutating func increaseLevel(){
        if level < 3{
            level += 1
        }
    }
    
    mutating func fail(){
        level = 1
    }
    
}
