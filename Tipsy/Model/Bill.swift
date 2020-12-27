//
//  Bill.swift
//  Tipsy
//
//  Created by Michael on 23/12/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Bill {
    let numPeople: Int
    let costPP: Float
    let tip: Float
    
    func totalCost() -> Float {
        return Float(numPeople) * costPP
    }
    
}
