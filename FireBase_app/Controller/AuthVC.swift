//
//  AuthVC.swift
//  FireBase_app
//
//  Created by Sakhti Subitshah Murugan on 10/31/17.
//  Copyright © 2017 Sakhti Subitshah Murugan. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

 
    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
    }
    @IBAction func facebookSignBtnWasPressed(_ sender: Any) {
    }
}
