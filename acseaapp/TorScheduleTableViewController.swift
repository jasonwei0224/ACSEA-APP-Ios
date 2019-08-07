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
    let message: String?
}
struct TorSceduleTime{
    let time: String?
}
class TorScheduleTableViewController: UITableViewController {
    
    var data = [TorScheduleCellData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dayOne();
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")     // Do any additional setup after loading the view.
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        if(indexPath.row == 0){
            cell.time = data[indexPath.row].time
            cell.layoutSubviews()
            return cell
        }else{
        
            
        cell.iconImage = data[indexPath.row].iconImage
        cell.mainImage = data[indexPath.row].mainImage
        cell.programName = data[indexPath.row].programName
        //cell.artistName = data[indexPath.row].artist
        cell.layoutSubviews()
        return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func dayOne(){
        data = [TorScheduleTime.init(time:"5:00 PM")
                TorScheduleCellData.init(mainImage: UIImage(named:"torworldcafe.png"),iconImage: UIImage(named:"foodicon.png"), message:"TAIWANfest Food Vendor\n(World Cafe)"),
                TorScheduleTime.init(time:"8:00 PM")
                TorScheduleCellData.init(mainImage: UIImage(named:"torconcertstage.png"),iconImage: UIImage(named:"performanceicon.png"), message:"Opening Ceremony\n(Concert Stage)"),
                TorScheduleTime.init(time:"8:30 PM")
                TorScheduleCellData.init(mainImage: UIImage(named:"torconcertstage.png"),iconImage: UIImage(named:"performanceicon.png"), message:"Celebrate Women Concert\n(Concert by Maestro Ken Hsieh)"),
               ]
                

                
                              
        //self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
    }
    
}
