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
    
    func getBillDescription() -> String {
//        var tipString: String?
//        if let tip = bill?.tip {
//            tipString = tip == 1.0 ? "0%" : tip == 1.1 ? "10%" : "20%"
//        }
        return String(format: "$%.2f Split between %d people with %.2f tip", bill?.totalCost() ?? 0.0, bill?.numPeople ?? 0, bill?.tip ?? 0.0)
    }
    
    
}
