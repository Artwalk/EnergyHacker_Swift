//
//  EnergyViewController.swift
//  EnergyHacker
//
//  Created by artwalk on 8/31/14.
//  Copyright (c) 2014 artwalk. All rights reserved.
//

import UIKit

class EnergyViewController : UIViewController {
    
    @IBOutlet weak var residualEnergyLabel: UILabel!
    
    @IBOutlet weak var energyImageView: UIImageView!
    
    @IBAction func chargeAction(sender: UIButton) {
//        EnergyManager.sharedInstance.charge()
//        self.updateResidualEnergyLabel()
    }
    
    @IBAction func gtdAction(sender: UIButton) {
//        EnergyManager.sharedInstance.discharge()
//        self.updateResidualEnergyLabel()
    }
    
    func updateResidualEnergyLabel() {
        let i = EnergyDataManager.sharedInstance.residualEnergy
        let s = (i > 9) ? "\(i)" : "0\(i)"
        residualEnergyLabel.text = s + " * 25" + " MP"
        self.energyImageView.image = UIImage(named:"Energy" + s)
    }
}
