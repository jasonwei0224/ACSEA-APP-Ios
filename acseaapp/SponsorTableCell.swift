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
   
    var mainImage: UIImage?
    
    
    var mainImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        self.addSubview(mainImageView)
       
        
        mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mainImageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        mainImageView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: mainImageView.widthAnchor, multiplier: 1.0/1.0).isActive = true
       //b mainImageView.widthAnchor.constraint(equalTo: mainImageView.heightAnchor, multiplier: 2.0/1.0).isActive = true
      //  mainImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true // width of image
      //  mainImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true //height of image
  
        // messageView.widthAnchor.constraint(equalTo:self.heightAnchor).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
  
        if let mainImage = mainImage{
            mainImageView.image = mainImage
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
