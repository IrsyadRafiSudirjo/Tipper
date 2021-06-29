//
//  ResultViewController.swift
//  Tipper
//
//  Created by Muhammad Irsyad Rafi on 29/06/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultValueLabel: UILabel!
    
    @IBOutlet weak var detailValueLabel: UILabel!
    
    var price:Float?
    var people:Float?
    var discount:Float?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultValueLabel.text = String(format: "%.2f", price!)
        
        let peopleText = String(format: "%.0f", people!)
        let discountText = String(format: "%.0f", 100 * discount!)
        detailValueLabel.text = "Split between \(peopleText) people and \(discountText)% tip"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
