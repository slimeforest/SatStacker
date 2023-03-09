//
//  GameBrain.swift
//  SatStacker
//
//  Created by Jack Battle on 3/1/23.
//

import Foundation

class GameBrain: UIProtocol {
    
    var uiDelegate: UIProtocol?
    
    var btcOwned: Float32 = 0.0
    var hashrate: Float32 = 0.00000001
    var timesFired: Int? = 0
    var isBoosted: Bool = false
    
    func addSat(multiplier: Float) {
        btcOwned += 0.00000001 * multiplier
        
    }
    func updateUI() {
        uiDelegate?.updateUI()
    }
    
    func startGame() {
        
//        let timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(checkGame), userInfo: nil, repeats: true)
        
        let timer = Timer.scheduledTimer(withTimeInterval: 0.25, repeats: true) { timer in
            print("Timer fired")
            self.timesFired! += 1
            self.btcOwned += 0.00000001
            print("timesFired: \(String(describing: self.timesFired)) - btcOwned: \(self.btcOwned)")
            self.updateUI()
        }
        
        
    }
    
//    @objc func checkGame() {
//
//        print("check game func called")
//    }
}
