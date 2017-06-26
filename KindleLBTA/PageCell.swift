//
//  PageCell.swift
//  KindleLBTA
//
//  Created by 123 on 26.06.17.
//  Copyright © 2017 taras team. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "TextTextTextTextTextTextTextTe xtTextTextTextTextTextTextTextTextTex tTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextT extTextTextTextTextTextTextTextTextT extTextTextTextTextTextTextTextTextTextT extTextText"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(textLabel)
        textLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        textLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        textLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
