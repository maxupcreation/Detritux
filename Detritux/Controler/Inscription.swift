//
//  Inscription.swift
//  Detritux
//
//  Created by Maxime on 12/08/2020.
//  Copyright © 2020 Maxime. All rights reserved.
//

import UIKit

class Inscription: UIViewController,UIPickerViewDelegate, UITextFieldDelegate {
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var mdpTxtField: UITextField!
    
    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer) {
        emailTxtField.resignFirstResponder()
          mdpTxtField.resignFirstResponder()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTxtField.resignFirstResponder()
         mdpTxtField.resignFirstResponder()
        return true
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
