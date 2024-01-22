//
//  ViewController.swift
//  AppEnviromentConfig
//
//  Created by Bhagyadhar Sahoo on 18/01/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let value = Environment().configuration(.baseUrl)
        print("Value: \(value)")
    }

}

