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

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return self.sections.count
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.items[section].count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section]
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ExperienceCell", for: indexPath) as? ExperienceTableViewCell {

            
            cell.experienceImageView.image = UIImage()
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
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
