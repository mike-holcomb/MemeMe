//
//  DetailViewController.swift
//  MemeMe
//
//  Created by Michael Holcomb on 7/9/15.
//  Copyright (c) 2015 Michael Holcomb. All rights reserved.
//

import UIKit

/** View controller for detail view of Meme */
class DetailViewController: ViewController{
    @IBOutlet weak var memeImageView: UIImageView!
    
    var memeIndex: Int!
    var currentMeme: Meme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        if let index = self.memeIndex {
            currentMeme = appDelegate.memes[memeIndex]
            memeImageView.image = currentMeme.memeImage
        }
    }
}
