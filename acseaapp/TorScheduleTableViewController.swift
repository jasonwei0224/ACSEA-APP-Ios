//
//  SponsorTableViewController.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit
struct TorScheduleCellData{
    let mainImage  : UIImage?
    let iconImage: UIImage?
    let programName: String?
}
struct TorSceduleTime{
    let time: String?
}
class TorScheduleTableViewController: UITableViewController {
    
    var data = [TorScheduleCellData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dayOne();
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        //self.tableView.register(CustomCell.self, forCellRuseIdentifier:"time")
        // Do any additional setup after loading the view.
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
            
            cell.iconImage = data[indexPath.row].iconImage
            cell.mainImage = data[indexPath.row].mainImage
            cell.programName = data[indexPath.row].programName
            cell.layoutSubviews()
            return cell
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func dayOne(){
        data = [
            TorScheduleCellData.init(mainImage:UIImage(named:""), iconImage:UIImage(named:"") , programName: "5:00 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:"torontoworldcafe.jpg"),iconImage: UIImage(named:"foodicon.png"), programName:"TAIWANfest Food Vendor\n(World Cafe)"),
            TorScheduleCellData.init(mainImage:UIImage(named:""), iconImage:UIImage(named:"") , programName: "8:00 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:"torontoconertstage.png"),iconImage: UIImage(named:"performanceicon.png"), programName:"Opening Ceremony\n(Concert Stage)"),
            TorScheduleCellData.init(mainImage:UIImage(named:""), iconImage:UIImage(named:"") , programName: "8:30 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:"torontoconertstage.png"),iconImage: UIImage(named:"performanceicon.png"), programName:"Celebrate Women Concert\n(Concert by Maestro Ken Hsieh)"),
            ]
                

                
                              
        //self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
    }
    
}
