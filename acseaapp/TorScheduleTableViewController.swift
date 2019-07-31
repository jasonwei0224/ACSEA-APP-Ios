//
//  SponsorTableViewController.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit
struct TorScheduleCellData{
    let image  : UIImage?
    let message: String?
}
class TorScheduleTableViewController: UITableViewController {
    
    var data = [VanScheduleCellData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dayOne();
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")     // Do any additional setup after loading the view.
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        cell.mainImage = data[indexPath.row].mainImage
        cell.iconImage = data[indexPath.row].iconImage
        cell.programName = data[indexPath.row].programName
        //cell.artistName = data[indexPath.row].artist
        cell.layoutSubviews()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
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
        data = []
        //self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
    }
    
}
