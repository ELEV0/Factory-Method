//
//  Plane.swift
//  Factory Method
//
//  Created by Admin on 26.12.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    var type: String = "Plane"
    
    func startPoint() {
        print("Started transportation by plane")
    }
    
    func endPoint() {
        print("Plane transportation ended")
    }
}
