//
//  SkillsViewController.swift
//  Laboration2
//
//  Created by Andreas Malmström on 2019-11-08.
//  Copyright © 2019 Andreas Malmström. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    @IBOutlet weak var movingSquare: UIView!
    var movingSquareXPositionConstraint: NSLayoutConstraint?
    
    @IBAction func closeSkillsButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideMovingSquareAnimated(animated: false)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.showMovingSquareAnimated(animated: true)
    }
    
    func hideMovingSquareAnimated(animated: Bool) {
        //remove current constraint
        self.removeMovingSquareXPositionConstraint()
        let hideConstraint = NSLayoutConstraint(item: self.movingSquare as Any,
            attribute: .right,
            relatedBy: .equal,
            toItem: self.view,
            attribute: .left,
            multiplier: 1,
            constant: 0)
        self.movingSquareXPositionConstraint = hideConstraint
        self.view.addConstraint(hideConstraint)
        //animate changes
        self.performConstraintLayout(animated: animated)
    }
    
    func showMovingSquareAnimated(animated: Bool) {
        //remove current constraint
        self.removeMovingSquareXPositionConstraint()
        let centerXConstraint = NSLayoutConstraint(item: self.movingSquare as Any,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: self.view,
            attribute: .centerX,
            multiplier: 1,
            constant: 0)
        self.movingSquareXPositionConstraint = centerXConstraint
        self.view.addConstraint(centerXConstraint)
        //animate changes
        self.performConstraintLayout(animated: animated)
    }
    
    func performConstraintLayout(animated: Bool) {
        if animated == true {
            UIView.animate(withDuration: 5,
              delay: 0,
              usingSpringWithDamping: 0.3,
              initialSpringVelocity: 0.4,
              options: .beginFromCurrentState,
              animations: { () -> Void in
                 self.view.layoutIfNeeded()
              }, completion: nil)
         } else {
              self.view.layoutIfNeeded()
         }
    }

    func removeMovingSquareXPositionConstraint() {
        if movingSquareXPositionConstraint != nil {
            self.view.removeConstraint(self.movingSquareXPositionConstraint!)
            self.movingSquareXPositionConstraint = nil
        }
    }
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
