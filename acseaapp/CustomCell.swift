//
//  CustomCell.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell{
    var mainImage: UIImage?
    var iconImage: UIImage?
    var programName: String?
    var artistName: String?
    
    var programNameView: UITextView={
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
    
    var iconImageView: UIImageView = {
       var imageView2 = UIImageView()
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        return imageView2
    }()
    
    /*var artistNameView: UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()*/
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        self.addSubview(mainImageView)
        self.addSubview(iconImageView)
        self.addSubview(programNameView)
       // self.addSubview(artistNameView)
        
        mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true // width of image
        mainImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true //height of image
        
        mainImageView.rightAnchor.constraint(equalTo: self.iconImageView.leftAnchor).isActive = true
    
        
        iconImageView.leftAnchor.constraint(equalTo: self.mainImageView.rightAnchor).isActive=true
        iconImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        iconImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true // width of image
        iconImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true //height of image
        
        iconImageView.rightAnchor.constraint(equalTo: self.programNameView.leftAnchor).isActive = true
        programNameView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true;
        programNameView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true;
        programNameView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true;
        programNameView.leftAnchor.constraint(equalTo: self.iconImageView.rightAnchor).isActive = true;
       // programNameView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true;
       
        
        /*artistNameView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true;
        artistNameView.leftAnchor.constraint(equalTo: self.programNameView.rightAnchor).isActive = true;
        artistNameView.topAnchor.constraint(equalTo: self.programNameView.topAnchor).isActive = true;
        artistNameView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true;*/
        
 
        
       // messageView.widthAnchor.constraint(equalTo:self.heightAnchor).isActive = true
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        if let mainImage = mainImage{
            mainImageView.image = mainImage
        }
        if let iconImage = iconImage{
            iconImageView.image = iconImage
        }
        /*if let artistName = artistName{
            artistNameView.text = artistName
        }*/
        if let programName = programName{
            programNameView.text = programName
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
