//
//  myChildView.swift
//  testing
//
//  Created by Anil on 16/05/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class myChildView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnPressed(sender: AnyObject) {
        
        NSNotificationCenter.defaultCenter().postNotificationName("refresh", object: nil)
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
