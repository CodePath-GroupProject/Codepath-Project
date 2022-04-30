//
//  AccountsViewController.swift
//  WarmUp
//
//  Created by Carlos Memije on 4/27/22.
//
import Parse
import UIKit

class AccountsViewController: UIViewController {

    
    @IBOutlet weak var StatName: UITextField!
    
    @IBOutlet weak var StatAge: UITextField!
    
    @IBOutlet weak var StatGender: UITextField!
    
    @IBOutlet weak var StatBench: UITextField!
    
    @IBOutlet weak var StatDeadlift: UITextField!
    
    @IBOutlet weak var StatSquat: UITextField!
    
    @IBOutlet weak var StatMile: UITextField!
    
    @IBOutlet weak var submitbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitAction(_ sender: Any) {
        
        let accounts = PFObject(className:"User")
        accounts["Name"] = "CodePath"
        accounts["Age"] = 1997
        accounts["Gender"] = "Male"
        accounts["Bench"] = 135
        accounts["Deadlift"] = 205
        accounts["Squat"] = 135
        accounts["Mile"] = 10
        accounts.saveInBackground {
          (success: Bool, error: Error?) in
          if (success) {
            // The object has been saved.
          } else {
            // There was a problem, check error.description
          }
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
