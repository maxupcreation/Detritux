//
//  Inscription.swift
//  Detritux
//
//  Created by Maxime on 12/08/2020.
//  Copyright © 2020 Maxime. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIPickerViewDelegate, UITextFieldDelegate {
    var dataCo = DataConnexionModel()
    
    
    @IBOutlet var dataSignInTxtField: [UITextField]!
    
    @IBAction func validateButton(_ sender: Any) {
        dataConnexionObject()
        checkStatusTxtField()
    }
    
   private func checkStatusTxtField() {
    switch dataCo.status {
    case.accepted :
        performSegue(withIdentifier:"segueSignUpSuccess", sender: nil)
    case.rejected(let error): presentAlert(with: error)
    }
    }
    
    private func presentAlert(with error: String) {
        let alert = UIAlertController(title: "Erreur", message: error, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    private func dataConnexionObject() {
        let prenom = dataSignInTxtField[0].text
        let eMail = dataSignInTxtField[1].text
        let motDePasse = dataSignInTxtField[2].text
        let confirmMotDePasse = dataSignInTxtField[3].text
        dataCo = DataConnexionModel(eMail: eMail, motDePasse: motDePasse, confirmMotDePasse: confirmMotDePasse, prenom: prenom)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSignUpSuccess" {
            let successVC = segue.destination as! SignUpSuccessViewController
            successVC.dataCo = dataCo
            
        }
    }
    
    
    // La gesture pour faire disparaître le clavier : Ne marche pas
    
    @IBAction func tapGestureReturn(_ sender: UITapGestureRecognizer) {
        for dataSign in dataSignInTxtField {
            dataSign.resignFirstResponder()
        }
        
    }
    
    
    
    // La fonction pour faire disparaître le clavier avec la touche retour
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
}

