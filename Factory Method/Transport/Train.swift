//
//  Train.swift
//  Factory Method
//
//  Created by Admin on 26.12.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class Train: Vehicle {
    var type: String = "Train"
    
    func startPoint() {
        print("Started transportation by train")
    }
    
    func endPoint() {
        print("Train transportation ended")
    }
}
