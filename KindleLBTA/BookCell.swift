//
//  BookCell.swift
//  KindleLBTA
//
//  Created by 123 on 25.06.17.
//  Copyright © 2017 taras team. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    var book: Book? {
        didSet {
            titleLabel.text = book?.title
            authorLabel.text = book?.author
            self.coverImageView.image = nil
            guard let coverImageUrl = book?.coverImageUrl else { return }
            guard let url = URL(string: coverImageUrl) else { return }
            URLSession.shared.dataTask(with: url) { (data, reponse, error) in
                if let err = error {
                    print(err)
                    return
                }
                
                guard  let imageData = data else {
                    return
                }
                
                let image = UIImage(data: imageData)
                
                DispatchQueue.main.async {
                    self.coverImageView.image = image
                }
            }.resume()
        }
    }
    
    private let coverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "image")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let authorLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .clear
        
        addSubview(coverImageView)
        coverImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        coverImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        coverImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        coverImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(titleLabel)
        titleLabel.leftAnchor.constraint(equalTo: coverImageView.rightAnchor, constant: 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -10).isActive = true
        
        
        addSubview(authorLabel)
        authorLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4).isActive = true
        authorLabel.leftAnchor.constraint(equalTo: coverImageView.rightAnchor, constant: 8).isActive = true
        authorLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        authorLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
