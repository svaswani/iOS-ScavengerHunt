//
//  ViewController.swift
//  Scavenger Hunt
//
//  Created by Apple on 1/27/16.
//  Copyright © 2016 Sneha Vaswani. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBAction func cancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    var newItem: ScavengerHuntItem?

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "doneItem" {
            if let name = textField.text {
                if !name.isEmpty {
                    newItem = ScavengerHuntItem(name: name)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

