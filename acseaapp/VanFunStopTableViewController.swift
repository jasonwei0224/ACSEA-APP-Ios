//
//  VanFunStopTableViewController.swift
//  acseaapp
//
//  Created by Jason on 2019-07-08.
//  Copyright © 2019 ACSEA. All rights reserved.
//


import UIKit

struct VanFunStopCellData{
    var icon : UIImage?
    let image  : UIImage?
    let message: String?
}
class VanFunStopTableViewController: UITableViewController {
    var data1 = [VanFunStopCellData]()
    var programOneComplete = false
override func viewDidLoad() {
    super.viewDidLoad()
    
    
    self.tableView.reloadData()
    self.refreshControl?.endRefreshing()
    self.tableView.register(FunStopCell.self, forCellReuseIdentifier: "custom3")
    self.tableView.rowHeight = UITableView.automaticDimension
    self.tableView.estimatedRowHeight = 200
    self.tableView.bounces = true;
    
}

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom3") as! FunStopCell
    cell.iconImage = data1[indexPath.row].image
    cell.mainImage = data1[indexPath.row].image
    cell.message = data1[indexPath.row].message
    cell.layoutSubviews()
    return cell
}

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data1.count
}
    func chagedImage(newIcon: UIImage){
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom3") as! FunStopCell
        cell.iconImage = newIcon
    }
}
