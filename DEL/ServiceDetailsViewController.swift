//
//  ServiceDetailsViewController.swift
//  DEL
//
//  Created by Ben Philip on 07/05/19.
//  Copyright © 2019 Ben Philip. All rights reserved.
//

import UIKit

class ServiceDetailsViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var serviceDetail = NSDate();
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        timeLabel.text = serviceDetail.description
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
