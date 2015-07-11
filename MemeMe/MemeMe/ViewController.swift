//
//  ViewController.swift
//  MemeMe
//
//  Created by Michael Holcomb on 7/6/15.
//  Copyright (c) 2015 Michael Holcomb. All rights reserved.
//

import UIKit

/** Custom Parent ViewController class including common implementations for data management */
class ViewController: UIViewController {
    
    var memes: [Meme]!
    var appDelegate: AppDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        memes = appDelegate.memes
        
    }
    
    func pushDetailViewController(memeIndex: Int){
        let memeDetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("memeDetailView") as! DetailViewController
        memeDetailViewController.memeIndex = memeIndex
        
        self.navigationController?.pushViewController(memeDetailViewController, animated: true)
    }


}

