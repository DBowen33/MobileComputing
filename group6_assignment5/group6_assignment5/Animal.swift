//
//  File.swift
//  group6_assignment5
//
//  Created by Denis Bowen on 10/8/19.
//  Copyright © 2019 Denis Bowen. All rights reserved.
//

import Foundation
import UIKit




class Animal {
    
    // MARK: Properties
    
    var name: String
    var scientificName: String
    var animalClass: String
    var size: String
    var photo: UIImage?
    
    // MARK: Initialization
    
    init?(name: String, scientificName: String, animalClass: String, size: String, photo: UIImage) {
        
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
        
        // The animal size must not be empty
        guard !size.isEmpty else {
            return nil
        }

    
      
        
        // Initialize stored properties
        self.name = name
        self.scientificName = scientificName
        self.animalClass = animalClass
        self.size = size
        self.photo = photo
    
    }
}

