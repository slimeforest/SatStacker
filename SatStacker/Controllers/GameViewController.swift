//
//  GameViewController.swift
//  SatStacker
//
//  Created by Jack Battle on 3/1/23.
//

import UIKit

class GameViewController: UIViewController, UIProtocol {
    
    @IBOutlet weak var BtcAmountLabel: UILabel!
    @IBOutlet weak var hashrateValueLabel: UILabel!
    
    let gameBrain = GameBrain()
    let formatter = NumberFormatter()    
    
    var btc: Float32 = 0.0
    var timer: Timer?
    var timesFIRED = 0
    
//    let multipliers = [GameBrain().noMultiplier,GameBrain().firstMultiplier,GameBrain().secondMultiplier, GameBrain().thirdMultiplier, GameBrain().fourthMultiplier, GameBrain().fifthMultiplier]
    var multiplierUnlocked: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gameBrain.uiDelegate = self
        gameBrain.startGame()

        
    }
    
    func updateUI() {
        self.timesFIRED = gameBrain.timesFired!
        BtcAmountLabel.text = "\(timesFIRED)"
    }
    
    @IBAction func grabButtonPressed(_ sender: Any) {
        print("pressed")
        
        print(gameBrain.btcOwned)
//        gameBrain.addSat()
        let formattedString = formatter.string(from: NSNumber(value: gameBrain.btcOwned))!
        
        BtcAmountLabel.text = "\(formattedString)"
        
    }
    
    
    
    
    
    

}
