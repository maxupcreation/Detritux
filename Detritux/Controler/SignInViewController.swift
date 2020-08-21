//
//  Inscription.swift
//  Detritux
//
//  Created by Maxime on 12/08/2020.
//  Copyright © 2020 Maxime. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController,UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet var dataSignInTxtField: [UITextField]!
  
    

    //SignUpViewControllerz
    var names = [String]()
    
    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer) {
        for txtField in dataSignInTxtField {
        txtField.resignFirstResponder()
      }
    
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        for txtField in dataSignInTxtField {
               txtField.resignFirstResponder()
             }
        return true
    }
    
    @IBAction func validateButtonTapped(_ sender: Any) {
     
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
}
