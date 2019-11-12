//
//  ExperienceDetailsViewController.swift
//  Laboration2
//
//  Created by Andreas Malmström on 2019-11-07.
//  Copyright © 2019 Andreas Malmström. All rights reserved.
//

import UIKit

class ExperienceDetailsViewController: UIViewController {
    
    @IBOutlet weak var experienceImageView: UIImageView!
    @IBOutlet weak var experienceNameLabel: UILabel!
    @IBOutlet weak var experienceYears: UILabel!
    @IBOutlet weak var experienceDescription: UILabel!
    
    var section = String()
    var item = String()
    var years = String()
    var image = String()
    var desc = String()

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    override func viewWillAppear(_ animated: Bool) {
        experienceImageView.image = UIImage(systemName: image)
        experienceNameLabel.text = item
        experienceYears.text = years
        experienceDescription.text = desc
        
    }


}
