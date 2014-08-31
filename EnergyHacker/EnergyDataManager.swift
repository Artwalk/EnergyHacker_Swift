//
//  EnergyManager.swift
//  EnergyHacker
//
//  Created by artwalk on 8/31/14.
//  Copyright (c) 2014 artwalk. All rights reserved.
//

import UIKit

private let _EnergyDataManagerSharedInstance = EnergyDataManager()

class EnergyDataManager  {
    
    class var sharedInstance : EnergyDataManager {
    return _EnergyDataManagerSharedInstance
    }
    
    var residualEnergy: Int = 6 {
        didSet {
            residualEnergy = (residualEnergy > 8 || residualEnergy < 0) ? oldValue : residualEnergy
        }
    }
    
    func charge() {
        self.residualEnergy += 1
    }
    
    func discharge() {
        self.residualEnergy -= 1
    }
    
}