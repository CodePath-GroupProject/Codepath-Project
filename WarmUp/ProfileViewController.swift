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
    @IBOutlet weak var profileMile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadstats()
            // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "UserStats")
        query.getObjectInBackground(withId: "b5JQpBuSam") { (gameScore, error) in
            if error == nil {
                // Success!
                self.profileName.text = gameScore!["Name"] as? String
                self.update()
            } else {
                // Fail!
            }
        }
    }

    func update () {
        DispatchQueue.main.async {
            self.profileName.text = "MyNewText"
        }
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
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
