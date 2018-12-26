//
//  Supercar.swift
//  Factory Method
//
//  Created by Admin on 26.12.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class SuperCar: Vehicle {
    var type: String = "Supercar"
    
    func startPoint() {
        print("Started transportation by supercar")
    }
    
    func endPoint() {
        print("Supercar transportation ended")
    }
}
