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
    
    var billCalculator = CalculatorBrain()
    var buttonArray: [UIButton]! //     Force create the array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonArray = [zeroPercentButton,tenPercentButton, twentPercentButton]
    }

    @IBAction func tipPercentButtonPressed(_ sender: UIButton) {
        buttonArray.forEach{
            $0.isSelected = false
        }
        sender.isSelected = true
        
    }
    
    @IBAction func stepperButtonPressed(_ sender: UIStepper) {
        numPeopleLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        var tipString: String = "0%"
        for button in buttonArray {
            if (button.isSelected) {
                tipString = button.titleLabel!.text!
            }
        }
        // Should do try catch incase they type in letters
        let amount = Float(billAmount.text!) ?? 0.0
        let people = Int(numPeopleLabel.text!) ?? 0
        let tipFloat = tipString == "0%" ? 1.0 : tipString == "10%" ? 1.1 : 1.2;
        billCalculator.calculateBill(numPeople: people, totalCost: amount, tip: Float(tipFloat))
        self.performSegue(withIdentifier: "goToBill", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToBill") {
            let billVC = segue.destination as! BillViewController
            billVC.totalPerPerson = String(format: "$%.2f", billCalculator.getCostPP())
            billVC.billSplitDetails = billCalculator.getBillDescription()

        }
    }
}
