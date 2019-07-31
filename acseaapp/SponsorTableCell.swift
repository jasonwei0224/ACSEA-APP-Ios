//
//  CustomCell.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import Foundation
import UIKit

class SponsorTableCell: UITableViewCell{
    var message: String?
    var mainImage: UIImage?
    
    var messageView: UITextView={
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        textView.isEditable = false
        return textView
        
    }()
    
    var mainImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var middleImageView: UIImageView = {
        var imageView2 = UIImageView()
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        return imageView2
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        self.addSubview(mainImageView)
        self.addSubview(messageView)
        
        mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true // width of image
        mainImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true //height of image
        
        messageView.leftAnchor.constraint(equalTo: self.mainImageView.rightAnchor).isActive = true
        messageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        messageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        messageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        // messageView.widthAnchor.constraint(equalTo:self.heightAnchor).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let message = message{
            messageView.text = message
        }
        if let mainImage = mainImage{
            mainImageView.image = mainImage
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
