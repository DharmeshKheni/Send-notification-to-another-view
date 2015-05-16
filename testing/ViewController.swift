//
//  ViewController.swift
//  testing
//
//  Created by Anil on 16/05/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "refreshList:", name:"refresh", object: nil)
    }
    
    func refreshList(notification: NSNotification){
        
        println("parent method is called")
    }

    @IBAction func btnPressed(sender: AnyObject) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("myChildView") as! UIViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }

}

