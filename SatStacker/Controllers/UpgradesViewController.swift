//
//  UpgradesViewController.swift
//  SatStacker
//
//  Created by Jack Battle on 3/2/23.
//

import UIKit

class UpgradesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var tableviewOutlet: UITableView!
    
    
    
    
    
    
    
    
    
    var upgradesArray: [Upgrade] = []
//    let upgradeNames = ["Nabia 4040", "Ray 20", "Mobby x20", "Ravixy Super X409", "Imbath"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upgradesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewOutlet.dequeueReusableCell(withIdentifier: "upgradeCell", for: indexPath) as! UpgradeTableViewCell
        
        
        cell.upgradeName.text = upgradesArray[indexPath.row].name
//        cell.upgradeImage.image = upgradesArray[indexPath.row].image
        cell.satCountLabel.text = "\(upgradesArray[indexPath.row].purchaseCost)"
        cell.quantityLabel.text = "x\(upgradesArray[indexPath.row].timesPurchased)"
        
        
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableviewOutlet.dataSource = self
        tableviewOutlet.delegate = self
        
        loadUpgrades()
        // Do any additional setup after loading the view.
    }
    
    
    func loadUpgrades() {
        
        let nabia = Upgrade(name: "Nabia 4040", multiplier: 1.05, purchaseCost: 30000, drainRate: 1, timesPurchased: 9, image: UIImage(systemName: "safari.fill")!)
        let ray = Upgrade(name: "Ray 20", multiplier: 1.3, purchaseCost: 60000, drainRate: 4, timesPurchased: 3, image: UIImage(systemName: "safari.fill")!)
        let mobby = Upgrade(name: "Mobby x20", multiplier: 1.9, purchaseCost: 120000, drainRate: 9, timesPurchased: 1, image: UIImage(systemName: "safari.fill")!)
        let ravixy = Upgrade(name: "Ravixy Super X409", multiplier: 2.5, purchaseCost: 180000, drainRate: 16, timesPurchased: 5, image: UIImage(systemName: "safari.fill")!)
        let imbath = Upgrade(name: "Imbath", multiplier: 5, purchaseCost: 10000000, drainRate: 5, timesPurchased: 1, image: UIImage(systemName: "safari.fill")!)
        let mobbyx40 = Upgrade(name: "Mobbyx40", multiplier: 10, purchaseCost: 100000000, drainRate: 10, timesPurchased: 1, image: UIImage(systemName: "safari.fill")!)
        let spark = Upgrade(name: "sparkix_elite", multiplier: 89, purchaseCost: 10000, drainRate: 10, timesPurchased: 1, image: UIImage(systemName: "safari.fill")!)
        
        upgradesArray.append(nabia)
        upgradesArray.append(ray)
        upgradesArray.append(mobby)
        upgradesArray.append(ravixy)
        upgradesArray.append(imbath)
        upgradesArray.append(mobbyx40)
        upgradesArray.append(spark)
        tableviewOutlet.reloadData()
        
    }
    
    

}
