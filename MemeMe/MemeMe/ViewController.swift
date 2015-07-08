//
//  ViewController.swift
//  MemeMe
//
//  Created by Michael Holcomb on 7/6/15.
//  Copyright (c) 2015 Michael Holcomb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextViewController = segue.destinationViewController as! UIViewController
        nextViewController.hidesBottomBarWhenPushed = true
    
    }


}

