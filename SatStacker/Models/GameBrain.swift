//
//  GameBrain.swift
//  SatStacker
//
//  Created by Jack Battle on 3/1/23.
//

import Foundation

class GameBrain: UIProtocol {
    
    var uiDelegate: UIProtocol?
    
    let totalSatsPossible = 100000000 * 21000000
    
    
    var btcOwned: Float32 = 0.0
    var hashrate: Float32 = 0.00000001
    var timesFired: Int? = 0
    var isBoosted: Bool = false
    
    var satsIn24Hrs: Float {
        let value = (hashrate * 2) * 86400
        return value
    }
    var upgradesOwned: [Upgrade] = []

//    var upgrades: [Upgrade] = [
//        Upgrade(name: <#T##String#>, multiplier: <#T##Float#>, purchaseCost: <#T##Float#>, drainRate: <#T##Int#>, timesPurchased: <#T##Int#>, image: <#T##UIImage#>),
//        Upgrade(name: <#T##String#>, multiplier: <#T##Float#>, purchaseCost: <#T##Float#>, drainRate: <#T##Int#>, timesPurchased: <#T##Int#>, image: <#T##UIImage#>),
//        Upgrade(name: <#T##String#>, multiplier: <#T##Float#>, purchaseCost: <#T##Float#>, drainRate: <#T##Int#>, timesPurchased: <#T##Int#>, image: <#T##UIImage#>),
//        Upgrade(name: <#T##String#>, multiplier: <#T##Float#>, purchaseCost: <#T##Float#>, drainRate: <#T##Int#>, timesPurchased: <#T##Int#>, image: <#T##UIImage#>)
//    ]

    
    func addSat(multiplier: Float) {
        btcOwned += 0.00000001 * multiplier
        
    }
    func updateUI() {
        uiDelegate?.updateUI()
    }
    
    func startGame(userUpgrades: [Upgrade]) {
        
//        let timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(checkGame), userInfo: nil, repeats: true)
        
        let timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
            print("Timer fired")
            
            for upgrade in userUpgrades {
                switch upgrade.upgradeCategory {
                case 1:
                    let multiplier = upgrade.multiplier
                    print("upgrade category 1")
                    self.btcOwned += self.hashrate * multiplier
                    
                case 2:
                    print("upgrade category 2")
                case 3:
                    print("upgrade category 3")
                case 4:
                    print("upgrade category 4")
                default:
                    print("error with upgrade category")
                }
                
            }
            
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
