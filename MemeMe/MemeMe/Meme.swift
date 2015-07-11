//
//  Meme.swift
//  MemeMe
//
//  Created by Michael Holcomb on 7/8/15.
//  Copyright (c) 2015 Michael Holcomb. All rights reserved.
//

import Foundation
import UIKit

/** Meme object to hold top and bottom string elements, image and combined image */
class Meme: AnyObject  {
    static let topDefaultText: String = "TOP"
    static let bottomDefaultText: String = "BOTTOM"
    
    var topString: String
    var bottomString: String
    var image: UIImage!
    var memeImage: UIImage!
    
    init(topString: String, bottomString: String, image: UIImage?, memeImage: UIImage?){
        self.topString = (topString == Meme.topDefaultText ? "" : topString)
        self.bottomString = (bottomString == Meme.bottomDefaultText ? "" : bottomString)
        self.image = image!
        self.memeImage = memeImage!
    }
    
    /** returns combination of top and bottom string in one line */
    func description() -> String{
        return topString + " " + bottomString
    }
}
