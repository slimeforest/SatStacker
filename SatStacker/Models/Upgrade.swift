//
//  Upgrade.swift
//  SatStacker
//
//  Created by Jack Battle on 3/1/23.
//

import Foundation
import UIKit

class Upgrade {
    let name: String
    let upgradeCategory: Int
    let multiplier: Float
    let purchaseCost: Float
    let drainRate: Int
    var timesPurchased: Int
    let image: UIImage
    
    init(name: String, category: Int, multiplier: Float, purchaseCost: Float, drainRate: Int, timesPurchased: Int, image: UIImage) {
        self.name = name
        self.upgradeCategory = category
        self.multiplier = multiplier
        self.purchaseCost = purchaseCost
        self.drainRate = drainRate
        self.timesPurchased = timesPurchased
        self.image = image
    }
    
}
