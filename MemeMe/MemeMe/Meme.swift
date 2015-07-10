//
//  Meme.swift
//  MemeMe
//
//  Created by Michael Holcomb on 7/8/15.
//  Copyright (c) 2015 Michael Holcomb. All rights reserved.
//

import Foundation
import UIKit

class Meme: AnyObject  {
    var topString: String
    var bottomString: String
    var image: UIImage!
    var memeImage: UIImage!
    
    init(topString: String, bottomString: String, image: UIImage?, memeImage: UIImage?){
        self.topString = (topString=="TOP" ? "" : topString)
        self.bottomString = (bottomString=="BOTTOM" ? "" : bottomString)
        self.image = image!
        self.memeImage = memeImage!
    }
    
    func description() -> String{
        return topString + " " + bottomString
    }
}
