//
//  Protocol.swift
//  Factory Method
//
//  Created by Admin on 26.12.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

protocol Vehicle {
    var type: String { get }
    
    func startPoint()
    
    func endPoint()
}
