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
        
        
            
       
    }
    
    func signIn() {
     let email: String = emailfield.text ?? ""
//        let email = "ww"
        let pswrd: String = passwordfield.text ?? ""
        Auth.auth().signIn(withEmail: email, password: pswrd) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
            
          // ...
        }
    }


}

class SignUp: UIViewController {
    @IBOutlet var emailfield: UITextField!
    @IBOutlet var passwordfield: UITextField!
    @IBOutlet var cnpasswordfield: UITextField!
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        createUser()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        
       
    }

    func createUser() {
        //let email: String = emailfield.text ?? ""
        let email = "dd"
        var pswrd: String = ""
        if (passwordfield.text == cnpasswordfield.text){
            pswrd = passwordfield.text ?? ""
        }
        Auth.auth().createUser(withEmail: email, password: pswrd) { authResult, error in
            if let error = error {
            } else {
                self.performSegue(withIdentifier: "backtoSignIn", sender: self)
            }
        }
    }
}

