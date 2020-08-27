//
//  MerciPhotoDeProfil.swift
//  Detritux
//
//  Created by Maxime on 12/08/2020.
//  Copyright © 2020 Maxime. All rights reserved.
//

import UIKit

class SignUpSuccessViewController: UIViewController {
    var dataCo = DataConnexionModel()
    
  
    @IBOutlet weak var prenomString: UILabel! {
        didSet {
            prenomString.text = dataCo.prenom
        }
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    

    
}
