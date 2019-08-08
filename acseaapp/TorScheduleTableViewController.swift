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
    let space1: UIImage?
    let iconImage: UIImage?
    let space2: UIImage?
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
        self.tableView.backgroundColor = UIColor.clear
        self.tableView.separatorColor = UIColor.clear
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        
        if(indexPath.row == 0 || indexPath.row == 2 || indexPath.row == 4){
            
            cell.backgroundColor = UIColor.clear
           // cell.backgroundView = UIImageView.init(image: UIImage(named:"titlebackground.png"))
            cell.programNameView.backgroundColor = UIColor.clear
            cell.programNameView.textColor = UIColor.black
            //cell.iconImage = data[indexPath.row].iconImage
            //cell.space1 = data[indexPath.row].space1
            //cell.mainImage = data[indexPath.row].mainImage
            cell.space2 = data[indexPath.row].space2
            cell.spaceImageView2.heightAnchor.constraint(equalToConstant: 50)
            cell.programName = data[indexPath.row].programName
            //cell.programNameView.textColor = UIColor.white
            cell.mainImageView.alpha = 0.0
            cell.iconImageView.alpha = 0.0
            
            cell.mainImageView.isHidden = true
            cell.iconImageView.isHidden = true
            cell.spaceImageView2.isHidden = true
            cell.spaceImageView.isHidden = true
            //cell.spaceImageView2.
            
            cell.spaceImageView2.alpha = 0.0
            cell.spaceImageView.alpha = 0.0
            cell.programNameView.font = UIFont(name: "Arial-BoldMT", size: 24)
            cell.programNameView.textAlignment = .center
            
            
            
            
            cell.layoutSubviews()
            return cell
        }
        else if(indexPath.row == 1){
                //cell.backgroundColor = UIColor.blue
                //cell.programNameView.backgroundColor = UIColor.blue
                //cell.programNameView.textColor = UIColor.white
                cell.backgroundColor = UIColor.clear
                
                cell.iconImage = data[indexPath.row].iconImage
                cell.space1 = data[indexPath.row].space1
                cell.spaceImageView.alpha = 0.0
                cell.spaceImageView2.alpha = 0.0
            
                cell.mainImage = data[indexPath.row].mainImage
                cell.space2 = data[indexPath.row].space2
                cell.programName = data[indexPath.row].programName
                cell.programNameView.backgroundColor = UIColor.clear
                cell.layoutSubviews()
            
                return cell
            }
        else{
            cell.backgroundColor = UIColor.clear
            cell.iconImageView.backgroundColor = UIColor.clear
            cell.iconImage = data[indexPath.row].iconImage
            cell.spaceImageView.backgroundColor = UIColor.clear
            cell.space1 = data[indexPath.row].space1
            cell.spaceImageView.alpha = 0.0
            cell.mainImageView.backgroundColor = UIColor.clear
            cell.mainImage = data[indexPath.row].mainImage
            cell.spaceImageView2.backgroundColor = UIColor.clear
            cell.spaceImageView2.alpha = 0.0
            cell.space2 = data[indexPath.row].space2
            cell.programNameView.backgroundColor = UIColor.clear
            cell.programName = data[indexPath.row].programName
            cell.layoutSubviews()
            return cell
        }
            //cell.space1 = data[indexPath.row].space1
            //cell.layoutSubviews()
            //return cell
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func dayOne(){
        data = [
            TorScheduleCellData.init(mainImage:UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"), iconImage:UIImage(named:"whitespace.png"), space2:UIImage(named:"whitespace.png"), programName: "5:00 PM"),
           
            
            TorScheduleCellData.init(mainImage: UIImage(named:"torontoworldcafe.jpg"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"foodicon.png"),space2:UIImage(named:"whitespace.png"), programName:"TAIWANfest Food Vendor\n(TAIWANfest)"),
            TorScheduleCellData.init(mainImage:UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"), iconImage:UIImage(named:"whitespace.png") ,space2:UIImage(named:"whitespace.png"), programName: "8:00 PM"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:"torontoconertstage.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"performanceicon.png"), space2:UIImage(named:"whitespace.png"),programName:"Opening Ceremony\n(TAIWANfest)"),
            
            
            TorScheduleCellData.init(mainImage:UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"), iconImage:UIImage(named:"whitespace.png"), space2: UIImage(named:"whitespace.png"), programName: "8:30 PM"),
           
            TorScheduleCellData.init(mainImage: UIImage(named:"torontoconertstage.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"performanceicon.png"),space2:UIImage(named:"whitespace.png"), programName:"Celebrate Women Concert\n(Concert by Maestro Ken Hsieh)"),
            ]
                

                
                              
        //self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
    }
    
}
