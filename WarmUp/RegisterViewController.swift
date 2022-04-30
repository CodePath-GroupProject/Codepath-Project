//
//  RegisterViewController.swift
//  WarmUp
//
//  Created by Duy Do on 4/10/22.
//

import UIKit
import Parse

class RegisterViewController: UIViewController {

    @IBOutlet weak var registerUsername: UITextField!
    
    @IBOutlet weak var registerPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        registerUsername.resignFirstResponder()
        registerPassword.resignFirstResponder()
    }
    
    
    @IBAction func onSignup(_ sender: Any) {
        let user = PFUser()
        user.username = registerUsername.text!
        user.password = registerPassword.text!
        
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "signupsegue", sender: nil)
            }
            else {
                print("error with sign up")
            }
        }
    }

}
