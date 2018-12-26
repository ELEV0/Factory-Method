//
//  ViewController.swift
//  Factory Method
//
//  Created by Admin on 26.12.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrayDrives = [Vehicle]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseTransport(name: .bus)
        chooseTransport(name: .plane)
        chooseTransport(name: .supercar)
        chooseTransport(name: .train)
        printResult()
    }

    func chooseTransport(name: Transport) {
        let option = Singletone.shared.createDrive(type: name)
        arrayDrives.append(option)
    }
    
    func printResult() {
        for i in arrayDrives {
            i.startPoint()
            i.endPoint()
        }
    }

}

