//
//  ViewController.swift
//  WarmUp
//
//  Created by Carlos Memije on 3/30/22.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var SigninUsername: UITextField!
    
    @IBOutlet weak var SigninPassword: UITextField! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        SigninUsername.resignFirstResponder()
        SigninPassword.resignFirstResponder()
    }
    
    @IBAction func onsignin(_ sender: Any) {
        let username = SigninUsername.text!
        let password = SigninPassword.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "profilesegue", sender: nil)
            } else {
                print ("Error: \(error?.localizedDescription)")
            }
        }
    
    }
}

