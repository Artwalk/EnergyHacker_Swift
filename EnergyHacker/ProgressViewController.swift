//
//  ProgressViewController.swift
//  EnergyHacker
//
//  Created by artwalk on 8/31/14.
//  Copyright (c) 2014 artwalk. All rights reserved.
//

import UIKit

class ProgressViewController: UIViewController {
    
    var dict: Dictionary<String, String>? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    @IBOutlet weak var mpLabel: UILabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        self.navigationItem.title = self.dict!["title"]
        self.mpLabel?.text = self.dict!["mp"]! + " MP"
        
        self.navigationItem.leftBarButtonItem = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    @IBAction func interruptAction(sender: UIBarButtonItem) {
        [self.presentingViewController .dismissViewControllerAnimated(true, completion: nil)]
    }
    
}