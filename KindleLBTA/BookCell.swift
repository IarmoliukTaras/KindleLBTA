//
//  BookCell.swift
//  KindleLBTA
//
//  Created by 123 on 25.06.17.
//  Copyright © 2017 taras team. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    let coverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .orange
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "TARAS LOX"
        return label
    }()
    
    let authorLabel: UILabel = {
        let label = UILabel()
        label.text = " LOLOLO"
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .yellow
        
        addSubview(coverImageView)
        coverImageView.frame = CGRect(x: 8, y: 8, width: 50, height: 64)
        
        addSubview(titleLabel)
        titleLabel.frame = CGRect(x: 66, y: 20, width: 200, height: 20)
        
        addSubview(authorLabel)
        authorLabel.frame = CGRect(x: 66, y: 48, width: 200, height: 20)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
