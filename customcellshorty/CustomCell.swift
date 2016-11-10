//
//  CustomCell.swift
//  customcellshorty
//
//  Created by Amy Giver on 9/15/16.
//  Copyright © 2016 Amy Giver Squid. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    
    var buttonDelegate: CustomCellDelegate?
    
    @IBOutlet weak var customLabel: UILabel!
    @IBAction func descButtonPressed(_ sender: UIButton) {
//        print("Description from within class")
        
        buttonDelegate?.cellButtonPressedFrom(self)
    }
    
    @IBOutlet weak var customCellPic: UIImageView!
}
