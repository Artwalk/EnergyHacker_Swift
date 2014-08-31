//
//  ChargeViewController.swift
//  EnergyHacker
//
//  Created by artwalk on 8/31/14.
//  Copyright (c) 2014 artwalk. All rights reserved.
//

import UIKit

class ChargeTableViewController: UITableViewController {
    let list = ["Nap", "Music", "Game", "Shopping", "Chat", "Sport"]
    let energyDict = ["Nap":25*3, "Music":25, "Game":25*2, "Shopping":25*2, "Chat":25, "Sport":25*3]
    
    // MARK: - Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showProgress" {
            let indexPath = self.tableView.indexPathForSelectedRow()
            let str = list[indexPath.row]
            let dict = ["title":str, "mp":"+\(self.energyDict[str]!)"] as Dictionary
            (segue.destinationViewController as ProgressViewController).dict = dict
        }
    }
    
    // MARK: - Table View
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> ChargeTableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("chargeCellIdentifier", forIndexPath: indexPath) as ChargeTableViewCell
        
        let title = list[indexPath.row] as String

        cell.titleLabel.text = title
        cell.energyLabel.text = "+ \(self.energyDict[title]!) MP"
        cell.imgView.image = UIImage(named: title)

        return cell
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    
}