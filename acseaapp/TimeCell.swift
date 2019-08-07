//
//  TimeCell.swift
//  acseaapp
//
//  Created by Jason Wei on 2019-08-07.
//  Copyright © 2019 ACSEA. All rights reserved.
//


import UIKit
class TimeCell: UITableViewCell{
    var time: String?
    var messageView: UITextView={
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        textView.isScrollEnabled = false
        textView.isEditable = false
        return textView
        
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        // self.addSubview(iconView)
        //self.addSubview(mainImageView)
        self.addSubview(messageView)
        messageView.leftAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        messageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        messageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        messageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        messageView.font = UIFont(name: "Arial", size: 20)
    
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        /*if let iconImage = iconImage{
         iconView.image = iconImage
         }*/
        if let message = time{
            messageView.text = message
            
            
            //messageView.layoutMargins.bottom = 100
        }
 
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
