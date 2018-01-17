//
//  CreateAccountVC.swift
//  Smack
//
//  Created by nopcallowed on 1/8/18.
//  Copyright © 2018 GASHAN INC. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
