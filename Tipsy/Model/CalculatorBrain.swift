//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Michael on 23/12/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bill: Bill?
    
    mutating func calculateBill(numPeople: Int, totalCost: Float, tip: Float) {
        let costPP = (totalCost * tip) / Float(numPeople)
        self.bill = Bill(numPeople: numPeople, costPP: costPP, tip: tip)
    }
    
    func getCostPP() -> Float {
        return bill?.costPP ?? 0.0
    }
    
}
