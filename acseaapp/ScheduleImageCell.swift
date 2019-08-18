//
//  CustomCell.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import Foundation
import UIKit

class ScheduleImageCell: UITableViewCell{
    //var message: String?
    var mainImage: UIImage?
    //var type: String?
    /*
    var typeView: UITextView={
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        textView.isEditable = false
        return textView
        
    }()*/
    
    
    var mainImageView: UIImageView = {
        var imageView2 = UIImageView()
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        return imageView2
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        self.addSubview(mainImageView)
      //  self.addSubview(typeView)
        mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainImageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        
       /* typeView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        typeView.bottomAnchor.constraint(equalTo: self.mainImageView.topAnchor).isActive = true
        typeView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        typeView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true*/
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if let mainImage = mainImage{
            mainImageView.image = mainImage
        }
        /*if let type = type{
            typeView.text = type
        }*/
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
