//
//  File.swift
//  group6_assignment5
//
//  Created by Denis Bowen on 10/8/19.
//  Copyright © 2019 Denis Bowen. All rights reserved.
//

import Foundation

class Animal {
    
    // MARK: Properties
    
    var name: String
    var scientificName: String
    var animalClass: String
    var size: Float
    
    // MARK: Initialization
    
    init?(name: String, scientificName: String, animalClass: String, size: Float) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The scientific name must not be empty
        guard !scientificName.isEmpty else {
            return nil
        }
        
        // The animal class must not be empty
        guard !animalClass.isEmpty else {
            return nil
        }
        
        // Size must greater than 0
        guard size > 0 else {
            return nil
        }
      
        
        // Initialize stored properties
        self.name = name
        self.scientificName = scientificName
        self.animalClass = animalClass
        self.size = size
    
    }
}

