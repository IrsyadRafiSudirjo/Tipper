//
//  ViewController.swift
//  Tipper
//
//  Created by Muhammad Irsyad Rafi on 29/06/21.
//

import UIKit

class CalculatorViewController: UIViewController {

    
    @IBOutlet weak var inputPriceTextField: UITextField!
    
    
    @IBOutlet weak var zeroPercentButtonOutlet: UIButton!
    
    @IBOutlet weak var tenPercentButtonOutlet: UIButton!
    
    @IBOutlet weak var twentyPercentButtonOutlet: UIButton!
    
    @IBOutlet weak var splitLabelOutlet: UILabel!
    
    var model = CalculatorModel()
    
    
    var discount :Float = 0.0
    var people :Float = 0.0
    var totalBill :Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func discountButtonPressed(_ sender: UIButton) {
        inputPriceTextField.endEditing(true)
        switch sender.currentTitle {
        case "0%":
            twentyPercentButtonOutlet.isSelected=false
            tenPercentButtonOutlet.isSelected=false
            zeroPercentButtonOutlet.isSelected=true
            model.setDiscount(0.0)
        case "10%":
            zeroPercentButtonOutlet.isSelected=false
            twentyPercentButtonOutlet.isSelected=false
            tenPercentButtonOutlet.isSelected=true
            model.setDiscount(0.1)
        case "20%":
            zeroPercentButtonOutlet.isSelected=false
            tenPercentButtonOutlet.isSelected=false
            twentyPercentButtonOutlet.isSelected=true
            model.setDiscount(0.2)
        default:
            print("error")
        }
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        model.setPeople(Float(sender.value))
        let text = String(format: "%.0f", sender.value)
        splitLabelOutlet.text = text
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        if inputPriceTextField.text != "" {
            let bill = Float(inputPriceTextField.text!) ?? 0.0
            
            model.setPrice(bill)
            self.performSegue(withIdentifier: "toResultView", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultView" {
            let  destinationVc = segue.destination as! ResultViewController
            destinationVc.people = model.people
            destinationVc.price = model.price
            destinationVc.discount = model.discount
        }
    }
    
    
    
}

