//
//  ViewController.swift
//  CodepathCalc
//
//  Created by student on 1/25/22.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountText: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from the text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get total tip ny multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update Total amount
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    

}

