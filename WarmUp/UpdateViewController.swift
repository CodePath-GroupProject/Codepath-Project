//
//  UpdateViewController.swift
//  WarmUp
//
//  Created by Duy Do on 4/30/22.
//

import UIKit
import Parse

class UpdateViewController: UIViewController {

    @IBOutlet weak var updateBench: UITextField!
    @IBOutlet weak var updateDeadlift: UITextField!
    @IBOutlet weak var updateSquat: UITextField!
    @IBOutlet weak var updateMile: UITextField!
    @IBOutlet weak var updateButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func updateAction(_ sender: Any) {
        let query = PFQuery(className: "UserStats")
        query.getObjectInBackground(withId: "NWV7sqjfmD") {
            (player, error) -> Void in
            if error != nil {
                print ("Error: \(error?.localizedDescription)")
            } else if let player = player {
                player["Bench"] = self.updateBench.text!
                player["Deadlift"] = self.updateDeadlift.text!
                player["Squat"] = self.updateSquat.text!
                player["Mile"] = self.updateMile.text!
                player.saveInBackground()
                self.performSegue(withIdentifier: "updatetosettings", sender: nil)
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
