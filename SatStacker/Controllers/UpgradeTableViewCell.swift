//
//  TableViewCell.swift
//  SatStacker
//
//  Created by Jack Battle on 3/2/23.
//

import UIKit

class UpgradeTableViewCell: UITableViewCell {
    @IBOutlet weak var upgradeName: UILabel!
    @IBOutlet weak var upgradeImage: UIImageView!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var satCountLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    let formatter = NumberFormatter()
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 8
        
        
    }
    
    
    
    @IBAction func cellBuyButtonPressed(_ sender: Any) {
    
        
        print(satCountLabel.text!)
        var num = Float(100000)
        guard let cost = Float(satCountLabel.text!) else { return print("Found nil when calculating cost") }
        
        let result = num - cost
        print(result)
    }
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
