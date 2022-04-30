//
//  ProfileViewController.swift
//  WarmUp
//
//  Created by Duy Do on 4/30/22.
//

import UIKit
import Parse
import AlamofireImage

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileAge: UILabel!
    @IBOutlet weak var profileGender: UILabel!
    @IBOutlet weak var profileBench: UILabel!
    @IBOutlet weak var profileDeadlift: UILabel!
    @IBOutlet weak var profileSquat: UILabel!
    @IBOutlet weak var profileMile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let query = PFQuery(className:"UserStats")
        query.getObjectInBackground(withId: "NWV7sqjfmD") { (gameScore, error) in
            if error == nil {
                // Success!
                self.profileName.text = ((gameScore!["Name"] as? String)!)
                self.profileAge.text = (gameScore!["Age"] as? String)! + " years"
                self.profileGender.text = gameScore!["Gender"] as? String
                self.profileBench.text = (gameScore!["Bench"] as? String)! + " lbs"
                self.profileSquat.text = (gameScore!["Squat"] as? String)! + " lbs"
                self.profileDeadlift.text = (gameScore!["Deadlift"] as? String)! + " lbs"
                self.profileMile.text = (gameScore!["Mile"] as? String)! + " miles"
            } else {
                // Fail!
            }
        }
//        profileName.text = "poop"
//        print(profileName.text)// Do any additional setup after loading the view.
    }

    func loadstats() {
        let query = PFQuery(className:"UserStats")
        query.getObjectInBackground(withId: "b5JQpBuSam") { (gameScore, error) in
            if error == nil {
                // Success!
                self.profileName.text = gameScore!["Name"] as? String
                print(gameScore!["Name"] as Any)
            } else {
                // Fail!
            }
        }
        
    }
    
//    @IBAction func changebtn(_ sender: Any) {
//        profileName.text = "poop"
//    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
