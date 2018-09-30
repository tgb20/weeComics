//
//  ComicAPI.swift
//  weeComics
//
//  Created by Jacob Bashista on 9/30/18.
//  Copyright © 2018 Jacob Bashista. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ComicAPI: NSObject {
    
    func getStrips() -> [Strip]{
        // Get All Strips with Images and Links
        
        return []
    }
    
    func getComics(stripID:Int) -> [Comic]{
        // Get Comics for strip stripID
        
        return []
    }
}


class Strip: NSObject {
    
    private var name = String()
    private var logo = UIImage()
    private var author = String()
    private var stripID = Int()
    private var link = String()
    
    init(name:String, logo:UIImage, author:String, stripID:Int, link:String){
        self.name = name
        self.logo = logo
        self.author = author
        self.stripID = stripID
        self.link = link
    }
}

class Comic: NSObject {
    
    private var name = String()
    private var comic = UIImage()
    private var cDescription = String()
    private var comicID = Int()
    
    init(name:String, comic:UIImage, cDescription:String, comicID:Int){
        self.name = name
        self.comic = comic
        self.cDescription = cDescription
        self.comicID = comicID
    }
}
