//
//  ViewController.swift
//  customcellshorty
//
//  Created by Amy Giver on 9/15/16.
//  Copyright © 2016 Amy Giver Squid. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, CustomCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    let flightlessBirds = ["ostrich", "penguin", "kiwi"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flightlessBirds.count
    }
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let normalcell = tableView.dequeueReusableCellWithIdentifier("customCell")! as UITableViewCell
//        normalcell.textLabel!.text = flightlessBirds[indexPath.row]
//        return normalcell
//        
//    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        cell.buttonDelegate = self
        cell.customLabel.text = flightlessBirds[indexPath.row]
        return cell
        
    }
    
    func cellButtonPressedFrom(_ cell: CustomCell){
//        print("Description from the delegate")
        print("birds array", flightlessBirds)
        if let bird = cell.customLabel.text {
            cell.customCellPic.image = UIImage(named: bird)
        }
        
    }


}

