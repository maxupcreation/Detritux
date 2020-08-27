//
//  Model.swift
//  Detritux
//
//  Created by Maxime on 12/08/2020.
//  Copyright © 2020 Maxime. All rights reserved.
//

import UIKit
struct DataConnexionModel {
    var eMail : String?
    var motDePasse : String?
    var confirmMotDePasse : String?
    var prenom : String?
    
   private func alert(message:String){
           let alert = UIAlertController(title: "Erreur", message: "Message", preferredStyle: .alert)
           let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alert.addAction(action)
            }

  
        enum Status {
            case accepted
            case rejected(String)
        }

        var status: Status {
            if prenom == nil || prenom == "" {
                return .rejected("Vous n'avez pas indiquÃ© votre nom !")
            }
            if motDePasse == nil || motDePasse == "" {
                return .rejected("Vous n'avez pas indiquÃ© votre tÃ©lÃ©phone !")
            }
            if confirmMotDePasse == nil || confirmMotDePasse == "" {
                return .rejected("Quel est votre race ?")
            }
            if eMail == nil || eMail == "" {
                return .rejected("Les mineurs ne sont pas admis.")
            }
            return .accepted
        }
     
      
            
        
            
        }
        

    
    
    
}
