//
//  LoginVC.swift
//  FireBase_app
//
//  Created by Sakhti Subitshah Murugan on 10/31/17.
//  Copyright © 2017 Sakhti Subitshah Murugan. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: InsertTextField!
    @IBOutlet weak var passwordField: InsertTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
        

        // Do any additional setup after loading the view.
    }
   
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signInBtnWasPressed(_ sender: Any) {
        if (emailField.text != nil ) && (passwordField.text != nil){
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!, loginComplete: { (sucess, loginerror) in
                if sucess{
                    self.dismiss(animated: true, completion: nil)
                }else{
                    print(String(describing:loginerror?.localizedDescription))
                }
                AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (sucess, registrationerror)in
                    if sucess{
                        AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (sucess, nil) in
                                 self.dismiss(animated: true, completion: nil)
                            print("Sucessfully registered user")
                        })
                    } else{
                            print(String(describing:registrationerror?.localizedDescription))
                        }
                    
                })
            })
            
        }

    }

    


}

extension LoginVC : UITextFieldDelegate{}
