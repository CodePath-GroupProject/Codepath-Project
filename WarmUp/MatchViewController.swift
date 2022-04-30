//
//  MatchViewController.swift
//  WarmUp
//
//  Created by Duy Do on 4/30/22.
//

import UIKit
import Koloda

class MatchViewController: UIViewController {

    @IBOutlet weak var kolodaView: KolodaView!
    
    let images = ["Ronnie", "Noel", "Arnold", "Athlean", "Jax", "Hybrid", "Scott", "cbum"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        kolodaView.layer.cornerRadius = 20
        kolodaView.clipsToBounds = true
        
        kolodaView.dataSource = self
        kolodaView.delegate = self
    }
}
    
    
    extension MatchViewController: KolodaViewDelegate {
      func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        koloda.reloadData()
      }
      
      func koloda(_ koloda: KolodaView, didSelectCardAt index: Int) {
        let alert = UIAlertController(title: "Congratulation!", message: "Now you're connected with \(images[index]) !", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
      }
    }

    extension MatchViewController: KolodaViewDataSource {
      
      func kolodaNumberOfCards(_ koloda:KolodaView) -> Int {
        return images.count
      }
      
      func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let view = UIImageView(image: UIImage(named: images[index]))
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        return view
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

