//
//  ViewController.swift
//  EcoScore (final version)
//
//  Created by 1a on 1/31/24.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class LoginViewController: UIViewController {
    @IBOutlet var emailfield: UITextField!
    @IBOutlet var passwordfield: UITextField!
    @IBOutlet var signinNext: UIButton!
    @IBAction func signInTapped(_ sender: UIButton) {
        signIn()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
            
       
    }
    
    func signIn() {
        let email: String = emailfield.text ?? ""
        let pswrd: String = passwordfield.text ?? ""
        Auth.auth().signIn(withEmail: email, password: pswrd) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
            
          // ...
        }
    }


}
