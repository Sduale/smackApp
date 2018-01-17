//
//  loginVC.swift
//  Smack
//
//  Created by nopcallowed on 1/8/18.
//  Copyright © 2018 GASHAN INC. All rights reserved.
//

import UIKit

class loginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
}
