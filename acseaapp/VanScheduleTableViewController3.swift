//
//  SponsorTableViewController.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class VanScheduleTableViewController3: UITableViewController {
    
    var data = [TorScheduleCellData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dayThree();
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")     // Do any additional setup after loading the view.
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
        self.tableView.backgroundColor = UIColor.clear
        self.tableView.separatorColor = UIColor.black
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        if((data[indexPath.row].programName?.contains("11:00 AM"))! ||
            (data[indexPath.row].programName?.contains("11:15 AM"))! ||
            (data[indexPath.row].programName?.contains("11:30 AM"))! ||
            (data[indexPath.row].programName?.contains("12:00 PM"))! ||
            (data[indexPath.row].programName?.contains("12:30 PM"))! ||
            (data[indexPath.row].programName?.contains("1:15 PM"))! ||
            (data[indexPath.row].programName?.contains("1:30 PM"))! ||
            (data[indexPath.row].programName?.contains("2:00 PM"))! ||
            (data[indexPath.row].programName?.contains("2:15 PM"))! ||
            (data[indexPath.row].programName?.contains("2:30 PM"))! ||
            (data[indexPath.row].programName?.contains("3:0 PM"))! ||
            (data[indexPath.row].programName?.contains("3:15 PM"))! ||
            (data[indexPath.row].programName?.contains("3:45 PM"))! ||
            (data[indexPath.row].programName?.contains("4:00 PM"))! ||
            (data[indexPath.row].programName?.contains("4:30 PM"))! ||
            (data[indexPath.row].programName?.contains("4:45 PM"))! ||
            (data[indexPath.row].programName?.contains("5:30 PM"))! ||
            (data[indexPath.row].programName?.contains("5:45 PM"))! ||
            (data[indexPath.row].programName?.contains("6:00 PM"))! ||
            (data[indexPath.row].programName?.contains("8:00 PM"))! ||
            (data[indexPath.row].programName?.contains("8:30 PM"))! ||
            (data[indexPath.row].programName?.contains("9:30 PM"))!){
            
            cell.backgroundColor = UIColor.clear
            // cell.backgroundView = UIImageView.init(image: UIImage(named:"titlebackground.png"))
            cell.programNameView.backgroundColor = UIColor.clear
            cell.programNameView.textColor = UIColor.black
            cell.iconImage = data[indexPath.row].iconImage
            cell.space1 = data[indexPath.row].space1
            cell.mainImage = data[indexPath.row].mainImage
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
            
            cell.spaceImageView2.alpha = 0.0
            cell.spaceImageView.alpha = 0.0
            cell.programNameView.font = UIFont(name: "Arial-BoldMT", size: 24)
            cell.programNameView.textAlignment = .left
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
            cell.programNameView.font = UIFont(name: "Arial", size: 20)
            cell.programNameView.textAlignment = .left
            cell.layoutSubviews()
            return cell
        }
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
    func dayThree(){
      data =  [
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"11:00 AM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Home Winds\n(Bao Khanh)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Pig Hero Ring Toss\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Taiwan Bookstore\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Intriguing Bookstore\n(Iris Chen)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"torontoworldcafe.jpg"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"foodicon.png"),space2:UIImage(named:"whitespace.png"), programName:"Taiwan New DNA\n(Shih Chien University)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"torontoworldcafe.jpg"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"foodicon.png"),space2:UIImage(named:"whitespace.png"), programName:"The Courage\n(Tong Zhou)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"torontoworldcafe.jpg"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"foodicon.png"),space2:UIImage(named:"whitespace.png"), programName:"Let's Savour Taiwan\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"torontoworldcafe.jpg"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"foodicon.png"),space2:UIImage(named:"whitespace.png"), programName:"Soy Sauce Test\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"torontoworldcafe.jpg"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"foodicon.png"),space2:UIImage(named:"whitespace.png"), programName:"Taiwanese Glove Puppet\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"torontoworldcafe.jpg"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"foodicon.png"),space2:UIImage(named:"whitespace.png"), programName:"Vietnamese Water Puppet\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"torontoworldcafe.jpg"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"foodicon.png"),space2:UIImage(named:"whitespace.png"), programName:"TAIWANfest Food Vendor\n(TAIWANfest)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"11:15 AM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Robot Prince\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Taiwan Stage\n(TAIWANfest)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"11:30 AM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"torontoworldcafe.jpg"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"foodicon.png"),space2:UIImage(named:"whitespace.png"), programName:"TAIWANfest Beer Garden\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Kids Zone\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Celebrate Women Concert\n(SFUCO)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"12:00 PM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Food - The Alley No.11\n(Allie Huang)"),
        
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"12:30 PM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Robot Prince\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Taiwan Stage\n(TAIWANfest)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"1:15 PM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Kids Zone\n(TAIWANfest)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"1:30 PM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"We were Children\n(Tim Wolochatiuk)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"2:00 PM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Robot Prince\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Taiwan Stage\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Herstory\n(Theatre as a second language)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"2:15 PM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Food - Petit ete\n(Josie Chang)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"3:00 PM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Kids Zone\n(TAIWANfest)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"3:15 PM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Talk - Alison Zhao\n(Alison Zhao)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Robot Prince\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Taiwan Stage\n(TAIWANfest)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"3:45 PM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"GAS\n(GAS)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"4:30 PM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Food - Hanoi Celebrity Chef\n(Manh Hung Nguyen)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Newspaper\n(LH Performance Productions)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"4:45 PM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Kids Zone\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Robot Prince\n(TAIWANfest)"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Taiwan Stage\n(TAIWANfest)"),
        
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"), space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"5:30 PM"),
        TorScheduleCellData.init(mainImage: UIImage(named:"whitespace.png"),space1: UIImage(named:"whitespace.png"),iconImage: UIImage(named:"whitespace.png"),space2:UIImage(named:"whitespace.png"), programName:"Tai Chi\n(Tai Chi)"),
        ]
    }
    
}
