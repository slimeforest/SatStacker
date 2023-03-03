//
//  GameBrain.swift
//  SatStacker
//
//  Created by Jack Battle on 3/1/23.
//

import Foundation

class GameBrain {
    var btcOwned: Float32 = 0.0
    var hashrate: Float32 = 0.00000001
    
    var isBoosted: Bool = false
    
    func addSat(multiplier: Float) {
        btcOwned += 0.00000001 * multiplier
        
    }
    

    
    func checkUpgrades() {
        
        
        
        
    }
    
}
