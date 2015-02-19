//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Greg Bell on 2015/2/16.
//  Copyright (c) 2015年 Greg Bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField! // ! means unwrapping an optional
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        /*
        rewriting into a single line of code
        let sizeFromTextField = mensShoeSizeTextField.text
        let numberFromTextField = sizeFromTextField.toInt()
        var integerFromTextField = numberFromTextField! // unwraps optional; and is variable
        */
        
        let sizeFromTextField =  mensShoeSizeTextField.text.toInt()! //changing using dot notation
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European shoe size."
        
        /* the line above does everything the code below does
        integerFromTextField += conversionConstant
        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
        */
    }
    
    @IBAction func converWomensShoeSizeButton(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        // needs to be a double because of the conversionConstant
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European shoze size."
    }

}

