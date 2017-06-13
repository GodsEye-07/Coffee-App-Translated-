//
//  ViewController.swift
//  Coffee App
//
//  Created by Ayush Verma on 13/06/17.
//  Copyright © 2017 ayush. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var amount:CGFloat = 0.0

    @IBOutlet weak var waterTxt: UITextField!
    @IBOutlet weak var ratioTxt: UITextField!
    @IBOutlet weak var coffeeTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateBtn(_ sender: Any) {
        
        let wateramount = Float(waterTxt.text!)
        let ratioamount = Float(ratioTxt.text!)
        
        amount = CGFloat(wateramount!/ratioamount!)
        
        coffeeTxt.text = String(describing: amount)
        
    }

}

