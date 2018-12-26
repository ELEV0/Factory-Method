//
//  Kitchen.swift
//  Factory Method
//
//  Created by Admin on 26.12.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

enum Transport {
    case bus, plane, supercar, train
}

class Singletone {
    static let shared = Singletone()
    
    func createDrive(type: Transport) -> Vehicle {
        switch type {
        case .bus:
            return Bus()
        case .plane:
            return Plane()
        case .supercar:
            return SuperCar()
        case .train:
            return Train()
        }
    }
}
