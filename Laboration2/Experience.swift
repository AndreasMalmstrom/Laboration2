//
//  Experience.swift
//  Laboration2
//
//  Created by Andreas Malmström on 2019-11-07.
//  Copyright © 2019 Andreas Malmström. All rights reserved.
//

import Foundation

class Experience {
    let imageName: String
    let experienceType: String
    let experienceName: String
    let experienceYears: String
    let experienceDescription: String
    
    // By setting default values here we don't have to set these parameters when creating the object
    init(imageName: String = "default", experienceType: String = "Type", experienceName: String = "Name", experienceYears: String = "20XX-20XX", experienceDescription: String = "Description") {
        self.imageName = imageName
        self.experienceType = experienceType
        self.experienceName = experienceName
        self.experienceYears = experienceYears
        self.experienceDescription = experienceDescription
    }

}

