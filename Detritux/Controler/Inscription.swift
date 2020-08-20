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
    
    //SignUpViewController
    var names = [String]()
    
    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer) {
        emailTxtField.resignFirstResponder()
        mdpTxtField.resignFirstResponder()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTxtField.resignFirstResponder()
        mdpTxtField.resignFirstResponder()
        return true
    }
    
    @IBAction func validateButtonTapped(_ sender: Any) {
     
    }
  /* private func saveDataVIP() {
        let emailAdresse = emailTxtField.text
        let mDP = mdpTxtField.text
        let dataCo = DataConnexion (EmailAdress: emailAdresse, MotDePasse: mDP)
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
}
