//
//  ViewController.swift
//  Localization
//
//  Created by Mohamed on 9/26/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit
import MOLH

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var langSwitch: UISwitch!
    @IBOutlet weak var apiReultLabel: UILabel!
    @IBOutlet weak var usernameTF: UITextField!
    
    var dic:[String:String] = ["ar":"مصر" , "en":"Egypt"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        apiReultLabel.text = "lang".localized == "en" ? dic["en"] : dic["ar"]
        
        langSwitch.addTarget(self, action: #selector(changeLang), for: .valueChanged)
        
        
    }
    
    
    @objc func changeLang(){
        
        if langSwitch.isOn == true{
            
            print("turn on")
            MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == "en" ? "ar" : "en")
            MOLH.reset()
            
        }else{
            
           
            MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == "ar" ? "en" : "ar")
            MOLH.reset()
        }
        
        
    }
    
    
    @IBAction func btn_Alert(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Alert".localized,
                                                message: "message".localized,
                                                preferredStyle: .alert)
        
        let action = UIAlertAction(title: NSLocalizedString("OK".localized, comment: ""), style: .default, handler: nil)
        
        alertController.addAction(action)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    

}

extension String {
    
    var localized:String{
        
        return NSLocalizedString(self, comment: "")
    }
   
    
}

