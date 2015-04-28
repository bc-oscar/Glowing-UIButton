//
//  ViewController.swift
//  Sample App
//
//  Created by Oscar Cortes on 4/28/15.
//  Copyright (c) 2015 Oscar Cortes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customButton: GlowingButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        customButton.startGlowWithCGColor(UIColor.whiteColor().CGColor)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

