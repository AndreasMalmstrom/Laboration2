//
//  ViewController.swift
//  Laboration2
//
//  Created by Andreas Malmström on 2019-10-30.
//  Copyright © 2019 Andreas Malmström. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func ExperienceButton(_ sender: Any) {
        performSegue(withIdentifier: "CVExperienceSegue", sender: self)
    }
}

