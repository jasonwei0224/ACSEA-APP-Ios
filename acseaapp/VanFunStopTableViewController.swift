//
//  VanFunStopTableViewController.swift
//  acseaapp
//
//  Created by Jason on 2019-07-08.
//  Copyright © 2019 ACSEA. All rights reserved.
//


import UIKit

struct VanFunStopCellData{
    let icon : UIImage?
    let image  : UIImage?
    let message: String?
}
class VanFunStopTableViewController: UITableViewController {
    var data1 = [VanFunStopCellData]()
override func viewDidLoad() {
    super.viewDidLoad()
    //tableView.dataSource = self
    //tableView.delegate = self
    dayOne();
    
    self.tableView.register(FunStopCell.self, forCellReuseIdentifier: "custom3")     // Do any additional setup after loading the view.
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
/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */
func dayOne(){
    data1 = [VanFunStopCellData.init(icon: UIImage(named: "gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: "One" ),
    VanFunStopCellData.init(icon: UIImage(named: "gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: "One" ),
    VanFunStopCellData.init(icon: UIImage(named: "gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: "One" ),
    VanFunStopCellData.init(icon: UIImage(named: "gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: "One" ),
    VanFunStopCellData.init(icon: UIImage(named: "gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: "One" ),
    VanFunStopCellData.init(icon: UIImage(named: "gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: "One" ),
    VanFunStopCellData.init(icon: UIImage(named: "gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: "One" ),
    VanFunStopCellData.init(icon: UIImage(named: "gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: "One" ),
    VanFunStopCellData.init(icon: UIImage(named: "gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: "One" ),
    VanFunStopCellData.init(icon: UIImage(named: "gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: "One" ),
    VanFunStopCellData.init(icon: UIImage(named: "gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: "One" ),  ]
    
}

}
