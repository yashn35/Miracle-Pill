//
//  ViewController.swift
//  Miracle Pill
//
//  Created by AMIT NARAYAN on 11/26/16.
//  Copyright © 2016 NarayanProduction. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
        statePicker.dataSource = self
        statePicker.delegate = self
        
    
    }
    @IBOutlet weak var statepickerBtn: UIButton!
    @IBOutlet weak var BuyNow:UIButton!
    @IBAction func ActionBuyNow(_ sender: Any) {
    }

    let states = ["Alaska", "California", "Florida", "Maine", "New York", "Alabama", "Kansas"]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StateButtonPressed(_ sender: Any) {
    
        statePicker.isHidden = false
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
   
  statepickerBtn.setTitle(states[row], for: UIControlState.normal)
   statePicker.isHidden = true
    }
}

