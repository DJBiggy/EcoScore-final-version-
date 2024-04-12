//
//  SignUpViewController.swift
//  EcoScore (final version)
//
//  Created by 1a on 3/22/24.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class SignUpViewController: UIViewController {
    @IBOutlet var emailfield: UITextField!
    @IBOutlet var passwordfield: UITextField!
    @IBOutlet var cnpasswordfield: UITextField!
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        createUser()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        navigationItem.hidesBackButton = true
       
    }

    func createUser() {
        let email: String = emailfield.text ?? ""
        var pswrd: String = passwordfield.text ?? ""
        if (passwordfield.text == cnpasswordfield.text){
            pswrd = passwordfield.text ?? ""
        }
        Auth.auth().createUser(withEmail: email, password: pswrd) { authResult, error in
            if let error = error {
            } else {
                self.performSegue(withIdentifier: "backToSignIn", sender: self)
            }
        }
    }
}

