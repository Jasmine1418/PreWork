//
//  ViewController.swift
//  PreWork
//
//  Created by Jasmine Makombe on 1/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipController: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {

        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentage = [0.15, 0.18, 0.2]
        
        let tip = bill *
        tipPercentage[tipController.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

