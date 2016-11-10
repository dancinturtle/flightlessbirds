//
//  CustomCellDelegate.swift
//  customcellshorty
//
//  Created by Amy Giver on 9/15/16.
//  Copyright © 2016 Amy Giver Squid. All rights reserved.
//

import Foundation
import UIKit

protocol CustomCellDelegate: class {
    func cellButtonPressedFrom(_ cell: CustomCell)
}
