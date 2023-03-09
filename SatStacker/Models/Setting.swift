

//
//  Setting.swift
//  SatStacker
//
//  Created by Zachary Garrison on 3/6/23.
//

import Foundation
import UIKit
class Setting {
    let settingName1: String
    let settingIsToggled1: Bool
    let settingImage1: UIImage
    
    
    init(settingName: String, settingIsToggled: Bool, settingImage: UIImage) {
        self.settingName1 = settingName
        self.settingIsToggled1 = settingIsToggled
        self.settingImage1 = settingImage
    }
    
}
