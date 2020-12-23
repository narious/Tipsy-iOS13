//
//  BillViewController.swift
//  Tipsy
//
//  Created by Michael on 23/12/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

import UIKit

class BillViewController: UIViewController {
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    @IBOutlet weak var billSplitDetailsLabel: UILabel!
    
    var totalPerPerson: String?
    var billSplitDetailsText: String?

    override func viewDidLoad() {
        totalPerPersonLabel.text = self.totalPerPerson
        billSplitDetailsLabel.text = self.billSplitDetailsText
        
    }
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
