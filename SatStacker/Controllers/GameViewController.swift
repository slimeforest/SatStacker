//
//  GameViewController.swift
//  SatStacker
//
//  Created by Jack Battle on 3/1/23.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak var BtcAmountLabel: UILabel!
    @IBOutlet weak var hashrateValueLabel: UILabel!
    
    let gameBrain = GameBrain()
    let formatter = NumberFormatter()

    var btc: Float32 = 0.0
    var timer: Timer?
    
//    let multipliers = [GameBrain().noMultiplier,GameBrain().firstMultiplier,GameBrain().secondMultiplier, GameBrain().thirdMultiplier, GameBrain().fourthMultiplier, GameBrain().fifthMultiplier]
    var multiplierUnlocked: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)

        
    }
    
    @objc func updateTimer() {
            // Call the function that should be executed on each timer interval
            uhhhh()
        }
    
    
    func uhhhh() {
        
        
        
        
    }
    
    @IBAction func grabButtonPressed(_ sender: Any) {
        print("pressed")
        
        print(gameBrain.btcOwned)
//        gameBrain.addSat()
        let formattedString = formatter.string(from: NSNumber(value: gameBrain.btcOwned))!
        
        BtcAmountLabel.text = "\(formattedString)"
        
    }
    
    
    
    
    
    

}
