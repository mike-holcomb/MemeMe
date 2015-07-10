//
//  ViewController.swift
//  MemeMe
//
//  Created by Michael Holcomb on 7/6/15.
//  Copyright (c) 2015 Michael Holcomb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var memes: [Meme]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        memes = appDelegate.memes
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextViewController = segue.destinationViewController as! UIViewController
        nextViewController.hidesBottomBarWhenPushed = true
    
    }


}

