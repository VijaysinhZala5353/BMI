//
//  ViewController.swift
//  BMI
//
//  Created by user213523 on 3/4/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var msgBMI: UITextField!
    @IBOutlet weak var showBMI: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateBMI(_ sender: UIButton) {
        let personH = Float(height.text!)!
        let personW = Float(weight.text!)!
        
        let BMI = personW/((personH/100)*personH/100)
        showBMI.text = String(BMI)
        
        if BMI <= 18.5
        {
            msgBMI.text = "You are in underweight!"
        }
        else if BMI <= 24.9
        {
            msgBMI.text = "You are in Normal weight!"
        }
        else if BMI <= 29.9
        {
            msgBMI.text = "You are in Overweight !"
        }
        else
        {
            msgBMI.text = "You are in Obesity !"
        }
    }
}

