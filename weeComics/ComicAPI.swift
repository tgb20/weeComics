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
    
    private var strips = [Strip]()
    
    init(url:String) {
        // Fetch Strips from URL
        self.strips = []
    }
    
    // Gets All Strips on Service
    func getStrips() -> [Strip] {
        return self.strips
    }
}


class Strip: NSObject {
    
    private var title = String()
    private var logo = String()
    private var author = String()
    private var url = String()
    private var comics = [Comic]()
    private var website = String()
    
    // Inits comic with a url to json file
    init(url:String) {
        self.url = url
        
        // Get Rest of Data from JSON
    }
    
    // Returns the Title of the Strip
    func getTitle() -> String {
        return self.title
    }
    
    // Returns the link to the logo of the Strip
    func getLogo() -> String {
        return self.logo
    }
    
    // Returns the author of the strip
    func getAuthor() -> String {
        return self.author
    }
    
    // Returns website of the strip
    func getWebsite() -> String {
        return self.website
    }
    
    // Gets a comic by id
    func getComicById(id:Int) -> Comic {
        return comics[id]
    }
    
    // Returns all comics of strip
    func getComics() -> [Comic] {
        return comics
    }
    
    
    
}

class Comic: NSObject {
    
    private var name = String()
    private var comicImage = String()
    private var cDescription = String()
    private var comicID = Int()
    private var comicLink = String()
    
    // Ints a Comic with Base Information
    init(name:String, comicImage:String, cDescription:String, comicID:Int, comicLink:String){
        self.name = name
        self.comicImage = comicImage
        self.cDescription = cDescription
        self.comicID = comicID
        self.comicLink = comicLink
    }
    
    // Returns name of comic
    func getName() -> String {
        return self.name
    }
    
    // Returns link to image for the comic
    func getComicImage() -> String {
        return self.comicImage
    }
    
    // Returns the comics description
    func getDescription() -> String {
        return self.cDescription
    }
    
    // Returns the comics id
    func getComicId() -> Int {
        return self.comicID
    }
    
    // Returns the link to the original comic
    func getComicLink() -> String {
        return self.comicLink
    }
    
}
