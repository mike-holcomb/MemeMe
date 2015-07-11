//
//  TableViewController.swift
//  MemeMe
//
//  Created by Michael Holcomb on 7/9/15.
//  Copyright (c) 2015 Michael Holcomb. All rights reserved.
//

import UIKit

class TableViewController: ViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return memes.count
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("memeTableCell") as! UITableViewCell
        let meme = memes[indexPath.row]
        
        cell.imageView?.image = meme.memeImage
        cell.textLabel?.text = meme.description()
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.pushDetailViewController(indexPath.row)
    }
    
}
