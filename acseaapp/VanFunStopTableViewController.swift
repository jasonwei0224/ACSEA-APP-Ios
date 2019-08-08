//
//  VanFunStopTableViewController.swift
//  acseaapp
//
//  Created by Jason on 2019-07-08.
//  Copyright © 2019 ACSEA. All rights reserved.
//


import UIKit

struct VanFunStopCellData{
   // var iconImage : UIImage?
    let mainImage  : UIImage?
    let message: String?
    
}
class VanFunStopTableViewController: UITableViewController {
    var data1 = [VanFunStopCellData]()

    
override func viewDidLoad() {
    super.viewDidLoad()
    
   
    
    self.tableView.reloadData()
    self.refreshControl?.endRefreshing()
    self.tableView.register(FunStopCell.self, forCellReuseIdentifier: "custom3")
    self.tableView.rowHeight = UITableView.automaticDimension
    self.tableView.estimatedRowHeight = 200
    self.tableView.bounces = true;
    self.tableView.backgroundColor = UIColor.clear
    
    
    
}

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom3") as! FunStopCell
    //cell.iconImage = data1[indexPath.row].iconImage
    cell.mainImage = data1[indexPath.row].mainImage
    cell.message = data1[indexPath.row].message
    //cell.layoutMargins.top = 5
    //cell.layoutMargins.bottom = 10
    cell.layoutSubviews()
    //cell.mainImageView.frame = CGRect.offsetBy(10)
    
   // cell.backgroundColor = UIColor.gray
    //cell.messageView.backgroundColor = UIColor.gray
    
    //cell.iconImage?.frame = CGRect(x: 0, y: 0, width: 38, height: 38)
    return cell
}

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data1.count
}
    func chagedImage(newIcon: UIImage){
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom3") as! FunStopCell
        
       // cell.iconImage = newIcon
    }
}
