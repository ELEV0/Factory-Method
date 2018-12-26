//
//  Bus.swift
//  Factory Method
//
//  Created by Admin on 26.12.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class Bus: Vehicle {
    var type: String = "Bus"
    
    func startPoint() {
        print("Started transportation by bus")
    }
    
    func endPoint() {
        print("Bus transportation ended")
    }
}
