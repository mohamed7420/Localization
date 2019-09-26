//
//  ViewController.swift
//  Localization
//
//  Created by Mohamed on 9/26/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var apiReultLabel: UILabel!
    @IBOutlet weak var usernameTF: UITextField!
    
    var dic:[String:String] = ["ar":"مصر" , "en":"Egypt"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        apiReultLabel.text = "lang".localized == "en" ? dic["en"] : dic["ar"]
        
        
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

