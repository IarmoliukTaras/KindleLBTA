//
//  ViewController.swift
//  KindleLBTA
//
//  Created by 123 on 25.06.17.
//  Copyright © 2017 taras team. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var books: [Book]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellId")
        navigationItem.title = "KindleLBTA"
        tableView.tableFooterView = UIView()
        setupBooks()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! BookCell
        
        let book = self.books?[indexPath.row]
        cell.book = book
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = self.books?.count {
            return count
        }
        return 0
    }
    
    func setupBooks() {
        let page = Page(number: 1, text: "text for the first page")
        
        let page1 = Page(number: 2, text: "text for second page")
        
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson",image: #imageLiteral(resourceName: "image"), pages: [page, page1])
        
        self.books = [book]
    }


}

