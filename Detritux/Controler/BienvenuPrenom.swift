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
    var saveP = DataConnexion()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func tapGesturePrenom(_ sender: UITapGestureRecognizer) {
        prenom.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        prenom.resignFirstResponder()
        return true
    }
    
    @IBAction func savePrenom() {
        func  savePrenom(){}
    }
    private func saveprenom() {
        let savePrenom = prenom.text
        saveP = DataConnexion(prenom: savePrenom!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToPrenom" {
            let prenomSegue = segue.destination as! MerciPhotoDeProfil
            prenomSegue.prenomString.text = prenom.text
        }
    }
}
