//
//  ServicesViewController.swift
//  DEL
//
//  Created by Ben Philip on 07/05/19.
//  Copyright © 2019 Ben Philip. All rights reserved.
//

import UIKit

class ServicesViewController: UITableViewController {

    var serviceDetailViewController: ServiceDetailsViewController? = nil
    var objects = [Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = editButtonItem;
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewService(_:)))
        
        navigationItem.rightBarButtonItem = addButton
    }
    
    @objc
    func insertNewService(_ sender: Any) {
        objects.insert(NSDate(), at: 0);
        let indexPath = IndexPath(row: 0 , section: 0);
        tableView.insertRows(at: [indexPath], with: .automatic);
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return objects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        //let object = objects[indexPath.row] as! NSDate
        //cell.textLabel!.text = object.description

        if let serviceCell = cell as? ServiceViewCell {
            let item = objects[indexPath.row] as! NSDate
            serviceCell.serviceTitle.text = "Application \(objects.count)"
            serviceCell.serviceDescription.text = item.description
            
            // Load image
            let serviceLogo = UIImage(named: "DUIC Logo")
            serviceCell.serviceLogo.image = serviceLogo
        }
        
        return cell
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            objects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showServiceDetails", sender: nil)
    }
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

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*if segue.identifier == "showServiceDetails" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row] as! NSDate
                let controller = (segue.destination as? UINavigationController)?.topViewController as! ServiceDetailsViewController
                
                controller.serviceDetail = object
                
            }
        }*/
        
        let destination = segue.destination as? ServiceDetailsViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            destination?.serviceDetail = objects[indexPath.row] as! NSDate
        }
        
    }
}
