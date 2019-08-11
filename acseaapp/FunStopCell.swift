//
//  CustomCell.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import Foundation
import UIKit

class FunStopCell: UITableViewCell{
    //var iconImage: UIImage?
    var mainImage: UIImage?
    var message: String?
    
    
    var messageView: UITextView={
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        textView.isScrollEnabled = false
        textView.isEditable = false
        textView.backgroundColor = UIColor.clear
        return textView
        
    }()
    
    var mainImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.backgroundColor = UIColor.clear
        return imageView
    }()
    
    /*var iconView: UIImageView = {
        var iconView = UIImageView()
        iconView.translatesAutoresizingMaskIntoConstraints = false
        return iconView
    }()*/
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style:style, reuseIdentifier: reuseIdentifier)
       // self.addSubview(iconView)
        self.addSubview(mainImageView)
        self.addSubview(messageView)
        
      //  iconView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
      //  iconView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        //iconView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        //iconView.rightAnchor.constraint(equalTo: self.mainImageView.leftAnchor).isActive = true
        //iconView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        //iconView.sizeToFit()
      //  iconView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
       // mainImageView.rightAnchor.constraint(equalTo: self.messageView.leftAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 67.5).isActive = true // width of image
        mainImageView.widthAnchor.constraint(equalToConstant: 92.5).isActive = true //height of image
        mainImageView.layoutMargins.top = 100
        mainImageView.layoutMargins.bottom = 100
        
        messageView.leftAnchor.constraint(equalTo: self.mainImageView.rightAnchor).isActive = true
        messageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        messageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        messageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        messageView.font = UIFont(name: "Arial", size: 20)
        // messageView.widthAnchor.constraint(equalTo:self.heightAnchor).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        /*if let iconImage = iconImage{
            iconView.image = iconImage
        }*/
        if let message = message{
            messageView.text = message
            messageView.backgroundColor = UIColor.clear
            
            //messageView.layoutMargins.bottom = 100
        }
        if let mainImage = mainImage{
            mainImageView.image = mainImage
            mainImageView.backgroundColor = UIColor.clear
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
