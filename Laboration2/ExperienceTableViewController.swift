//
//  ExperienceTableViewController.swift
//  Laboration2
//
//  Created by Andreas Malmström on 2019-11-06.
//  Copyright © 2019 Andreas Malmström. All rights reserved.
//

import UIKit

class ExperienceTableViewController: UITableViewController {

    
    let sections = ["Work" , "Education" ]

    let items = [["MacDonalds", "Jensens Böfhus"], ["DMP"]]

    let years = [["2007-2011", "2013-Current"], ["2018-Current"]]
    
    let images = [["trash", "trash.fill"], ["pencil"]]
    
    let desc = [["Frying burgers and flipping tables", "Cooking medium-rare steaks all day long"], ["Learning to code"]]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items[section].count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section]
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ExperienceCell", for: indexPath) as? ExperienceTableViewCell {

            
            cell.experienceImageView.image = UIImage(systemName: self.images[indexPath.section][indexPath.row])
            cell.experienceNameLabel.text = self.items[indexPath.section][indexPath.row]
            cell.experienceYears.text = self.years[indexPath.section][indexPath.row]
            
            
            return cell
        }
 
        return UITableViewCell()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? ExperienceDetailsViewController
        let indexPathRow = tableView.indexPathForSelectedRow?.row
        let indexPathSection = tableView.indexPathForSelectedRow?.section
        
        
        
        destination?.title = self.items[indexPathSection!][indexPathRow!]
        
        destination?.item = self.items[indexPathSection!][indexPathRow!]
        destination?.years = self.years[indexPathSection!][indexPathRow!]
        destination?.image = self.images[indexPathSection!][indexPathRow!]
        destination?.desc = self.desc[indexPathSection!][indexPathRow!]
    }
    
}
  
