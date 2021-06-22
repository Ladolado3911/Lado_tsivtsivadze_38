//
//  ViewController.swift
//  LadoTsivtsivadze_38
//
//  Created by Ladolado3911 on 6/22/21.
//

import UIKit

class MainController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onCalculate(_ sender: UIButton) {
        btn.isEnabled = false
        DispatchQueue.global(qos: .background).async {
            (1...100000).map { print($0) }
            DispatchQueue.main.async {
                self.btn.isEnabled = true
            }
        }
    }
}



