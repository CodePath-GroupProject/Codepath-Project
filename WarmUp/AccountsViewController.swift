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
        
        var accounts = PFObject(className:"UserStats")
        accounts["Name"] = StatName.text!
        accounts["Age"] = Int(StatAge.text!)
        accounts["Gender"] = StatGender.text!
        accounts["Bench"] = Int(StatBench.text!)
        accounts["Deadlift"] = Int(StatDeadlift.text!)
        accounts["Squat"] = Int(StatSquat.text!)
        accounts["Mile"] = StatMile.text!
        accounts.saveInBackground {
          (success: Bool, error: Error?) in
          if (success) {
              self.performSegue(withIdentifier: "landingpage", sender: nil)
            // The object has been saved.
          } else {
              print ("Error: \(error?.localizedDescription)")
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
