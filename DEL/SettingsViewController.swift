//
//  SettingsViewController.swift
//  DEL
//
//  Created by Ben Philip on 07/05/19.
//  Copyright © 2019 Ben Philip. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {

    var services = ["Personal Details", "Add New Services"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return services.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath)

        if let settingCell = cell as? SettingViewCell {
            let item = services[indexPath.row]
            
            settingCell.settingTitle.text = item
        }

        return cell
    }
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // Perform segue to Personal Information View
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(indexPath.row == 0) {
            performSegue(withIdentifier: "segueEditPersonalDetails", sender: nil)
        }
        else if(indexPath.row == 1) {
            performSegue(withIdentifier: "segueAddServices", sender: nil)
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
