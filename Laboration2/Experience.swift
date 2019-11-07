//
//  Experience.swift
//  Laboration2
//
//  Created by Andreas Malmström on 2019-11-07.
//  Copyright © 2019 Andreas Malmström. All rights reserved.
//

import Foundation

class Experience {
    
    let section: String
    let item: String
    let years: String
    let image: String
    let desc: String
    
    // By setting default values here we don't have to set these parameters when creating the object
    init(section: String = "Type", item: String = "Name", years: String = "20XX-20XX",image: String = "default",  desc: String = "Description") {
        
        self.section = section
        self.item = item
        self.years = years
        self.image = image
        self.desc = desc
    }

}

