//
//  CalcViewController.swift
//  Tipsy
//
//  Created by Michael on 23/12/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

import UIKit

class CaculatorViewController: UIViewController {
    @IBOutlet weak var billAmount: UITextField!
    
    @IBOutlet weak var zeroPercentButton: UIButton!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var twentPercentButton: UIButton!
    
    @IBOutlet weak var numPeopleLabel: UILabel!
    
    var calculator = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipPercentButtonPressed(_ sender: UIButton) {
        print(sender.titleLabel?.text ?? "None")
        
    }
    
    @IBAction func stepperButtonPressed(_ sender: UIStepper) {
        print(sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        // let tip = tip == "0%" ? 1 : tip == "10%" ? 1.1 : 1.2;
        // calculator.calculateBill(numPeople: numPeopleLabel.text , totalCost: <#T##Float#>, tip: <#T##String#>)
        // self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToBill") {
            let billVC = segue.destination
            
        }
    }
}
