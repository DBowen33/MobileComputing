//
//  File.swift
//  group6_assignment5
//
//  Created by Denis Bowen on 10/8/19.
//  Copyright © 2019 Denis Bowen. All rights reserved.
//

import Foundation

class Animal {
    
    private var name:String = ""
    private var scientificName:String = ""
    private var animalClass:String = ""
    private var size:Float = 0.0
    
    init(name:String, scientificName:String, animalClass:String, size:Float) {
        self.name = name
        self.scientificName = scientificName
        self.animalClass = animalClass
        self.size = size
    }
}

