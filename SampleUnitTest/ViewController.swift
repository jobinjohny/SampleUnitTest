//
//  ViewController.swift
//  SampleUnitTest
//
//  Created by Jobin on 06/08/18.
//  Copyright © 2018 Jobin_Johny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var percentageInputVlaue: UITextField!
    @IBOutlet weak var percentageValue: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func calculatePercentage(percentage:Double, percentageValue: Double) -> Double {
        var calculatedValue = 10.0
        calculatedValue = (percentage*percentageValue)/100
        return calculatedValue;
    }

    @IBAction func processButtonTpped(_ sender: Any) {
        if !validateFields() {
            //process
            resultLabel.text = String(calculatePercentage(percentage: Double(percentageValue.text!)!, percentageValue: Double(percentageInputVlaue.text!)!));
        }
    }
    
    func validateFields() -> Bool {
        var isFailed = true
        if((percentageValue.text?.isEmpty)! || (percentageInputVlaue.text?.isEmpty)!) {
            isFailed = true;
        } else {
            isFailed = false;
        }
        return isFailed;
    }
    
}

