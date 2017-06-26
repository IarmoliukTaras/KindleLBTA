//
//  Models.swift
//  KindleLBTA
//
//  Created by 123 on 25.06.17.
//  Copyright © 2017 taras team. All rights reserved.
//

import UIKit

class Book {
    let title: String
    let author: String
    let pages: [Page]
    let image: UIImage
    
    init(title: String, author: String, image: UIImage, pages: [Page]) {
        self.author = author
        self.title = title
        self.pages = pages
        self.image = image
    }
    
    init(dictionary: [String: Any]) {
        self.title = dictionary["title"] as? String ?? ""
        self.author = dictionary["author"] as? String ?? ""
        self.image = #imageLiteral(resourceName: "image")
        var bookPages = [Page]()
        if let pagesDictionary = dictionary["pages"] as? [[String: Any]] {
            
            for pageDictionary in pagesDictionary {
                if let pageText = pageDictionary["text"] as? String {
                    let page = Page(number: 1, text: pageText)
                    bookPages.append(page)
                }
            }
        }
        self.pages = bookPages
    }
}

class Page {
    let number: Int
    let text: String
    
    init(number: Int, text: String) {
        self.number = number
        self.text = text
    }
}
