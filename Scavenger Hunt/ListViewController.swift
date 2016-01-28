//
//  ListViewController.swift
//  Scavenger Hunt
//
//  Created by Apple on 1/27/16.
//  Copyright © 2016 Sneha Vaswani. All rights reserved.
//

import UIKit
import Foundation

class ListViewController : UITableViewController {
    
    var itemsList = [
        ScavengerHuntItem(name: "Cat"),
        ScavengerHuntItem(name: "Bird"),
        ScavengerHuntItem(name: "Brick")
    ]
    
    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        if segue.identifier == "doneItem" {
            let addVC = segue.sourceViewController as! AddViewController
            if let newItem = addVC.newItem {
                itemsList += [newItem]
                let indexPath = NSIndexPath(forRow: itemsList.count - 1, inSection: 0)
                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListViewCell", forIndexPath: indexPath)
        
        let item = itemsList[indexPath.row]
        
        cell.textLabel?.text = item.name
        
        return cell
    }
}