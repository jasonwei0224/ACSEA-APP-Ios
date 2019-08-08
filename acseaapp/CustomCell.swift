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
    var space1: UIImage?
    var iconImage: UIImage?
    var space2: UIImage?
    var programName: String?
    //var artistName: String?
    
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
    var spaceImageView: UIImageView = {
        var spaceView = UIImageView()
        spaceView.translatesAutoresizingMaskIntoConstraints = false
        return spaceView
    }()
    var spaceImageView2: UIImageView = {
        var spaceView2 = UIImageView()
        spaceView2.translatesAutoresizingMaskIntoConstraints = false
        return spaceView2
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
        self.addSubview(spaceImageView)
        self.addSubview(iconImageView)
        self.addSubview(spaceImageView2)
        self.addSubview(programNameView)
       // self.addSubview(artistNameView)
        
        mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainImageView.rightAnchor.constraint(equalTo: self.spaceImageView.leftAnchor).isActive = true
       
       spaceImageView.leftAnchor.constraint(equalTo: self.mainImageView.rightAnchor).isActive = true
        spaceImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        spaceImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        spaceImageView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        
        iconImageView.leftAnchor.constraint(equalTo: self.spaceImageView.rightAnchor).isActive=true
        iconImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        iconImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true // width of image
        iconImageView.rightAnchor.constraint(equalTo: self.spaceImageView2.leftAnchor).isActive = true
       
        spaceImageView2.leftAnchor.constraint(equalTo: self.iconImageView.rightAnchor).isActive = true
        spaceImageView2.rightAnchor.constraint(equalTo: self.programNameView.leftAnchor).isActive = true
        spaceImageView2.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        spaceImageView2.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        spaceImageView2.widthAnchor.constraint(equalToConstant: 10).isActive = true
        
        programNameView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true;
        programNameView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true;
        programNameView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true;
        programNameView.leftAnchor.constraint(equalTo: self.spaceImageView2.rightAnchor).isActive = true;
        //programNameView.rightAnchor.constraint(equalTo:self.rightAnchor).isActive = true;
        programNameView.font = UIFont(name: "Arial", size:18)
        
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
        if let space1 = space1{
            spaceImageView.image = space1
        }
        if let iconImage = iconImage{
            iconImageView.image = iconImage
        }
        if let space2 = space2{
            spaceImageView2.image = space2
        }
        if let programName = programName{
            programNameView.text = programName
        }
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
