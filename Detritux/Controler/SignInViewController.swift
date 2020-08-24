//
//  Inscription.swift
//  Detritux
//
//  Created by Maxime on 12/08/2020.
//  Copyright © 2020 Maxime. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIPickerViewDelegate, UITextFieldDelegate {

    
    @IBOutlet var dataSignInTxtField: [UITextField]!
    
  
    
    
    
    
    
    
    @IBAction func tapGestureReturn(_ sender: UITapGestureRecognizer) {
        for dataSign in dataSignInTxtField {
            dataSign.resignFirstResponder()
        }
            
        }
        
        
        
        

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
}

