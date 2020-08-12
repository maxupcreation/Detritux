//
//  BienvenuPrenom.swift
//  Detritux
//
//  Created by Maxime on 12/08/2020.
//  Copyright © 2020 Maxime. All rights reserved.
//

import UIKit

class BienvenuPrenom: UIViewController {
    @IBOutlet weak var prenom: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        prenom.resignFirstResponder()
        return true
    }
    
    @IBAction func savePrenom(_ sender: Any) {
        func  savePrenom(){}
    }
    private func saveprenom() {
        let savePrenom = prenom.text
        
    }
    
    
}
