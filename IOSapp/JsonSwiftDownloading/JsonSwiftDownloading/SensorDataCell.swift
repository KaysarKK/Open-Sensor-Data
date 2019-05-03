//
//  SensorData.swift
//  JsonSwiftDownloading
//
//  Created by Bakhyt Nazirov on 5/3/19.
//  Copyright © 2019 Bakhyt Nazirov. All rights reserved.
//

import UIKit

class SensorDataCell: UITableViewCell {

    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var timeView: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
