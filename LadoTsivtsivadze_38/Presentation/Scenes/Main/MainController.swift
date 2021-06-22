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
    
    func isPrime(num: Int) -> Bool {
        if num <= 1 {
            return false
        }
        for a in 2..<num {
            if num % a == 0 {
                return false
            }
        }
        return true
    }

    @IBAction func onCalculate(_ sender: UIButton) {
        btn.isEnabled = false
        DispatchQueue.global(qos: .background).async {
            (1...100000).forEach { [weak self] in
                guard let self = self else { return }
                if self.isPrime(num: $0) {
                    print($0)
                }
            }
            DispatchQueue.main.async {
                self.btn.isEnabled = true
            }
        }
    }
}



