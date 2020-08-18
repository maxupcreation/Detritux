//
//  BienvenuPrenom.swift
//  Detritux
//
//  Created by Maxime on 12/08/2020.
//  Copyright © 2020 Maxime. All rights reserved.
//

import UIKit

class BienvenuPhotoDeProfil: UIViewController {
    @IBOutlet weak var prenomString: UITextField!
    
    var saveP : DataConnexion!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func tapGesturePrenom(_ sender: UITapGestureRecognizer) {
        prenomString.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        prenomString.resignFirstResponder()
        return true
    }
    
    @IBAction func savePrenom() {
        saveprenomAction()
        performSegue(withIdentifier: "segueToPrenom", sender: self)
        
    }
    private func saveprenomAction() {
        let savePrenomString = prenomString.text
        saveP = DataConnexion(prenom: savePrenomString)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToPrenom" {
            let prenomSegue = segue.destination as! MerciPrenom
            prenomSegue.saveP = saveP
        }
    }
}
