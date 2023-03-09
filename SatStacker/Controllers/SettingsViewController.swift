//
//  SettingsViewController.swift
//  SatStacker
//
//  Created by Zachary Garrison on 3/9/23.
//
import UIKit
import Foundation

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let mySetting = Setting(settingName: "cum", settingIsToggled: true, settingImage: UIImage(systemName: "pencil")!)
        
        let Volume = Setting(settingName: "Volume", settingIsToggled: true, settingImage: UIImage(systemName: "pencil")!)
        
        let Restore = Setting(settingName: "Restore Purchases", settingIsToggled: true, settingImage: UIImage(systemName: "pencil")!)
        
        let Prestige = Setting(settingName: "Prestige", settingIsToggled: true, settingImage: UIImage(systemName: "pencil")!)
        
        let Reset = Setting(settingName: "Reset", settingIsToggled: true, settingImage: UIImage(systemName: "pencil")!)
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



