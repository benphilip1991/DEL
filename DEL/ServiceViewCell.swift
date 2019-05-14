//
//  ServiceViewCell.swift
//  DEL
//
//  Created by Ben Philip on 11/05/19.
//  Copyright © 2019 Ben Philip. All rights reserved.
//

import UIKit

class ServiceViewCell: UITableViewCell {

    @IBOutlet weak var serviceLogo: UIImageView!
    @IBOutlet weak var serviceTitle: UILabel!
    @IBOutlet weak var serviceDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
