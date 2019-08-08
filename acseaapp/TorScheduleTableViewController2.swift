//
//  SponsorTableViewController.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class TorScheduleTableViewController2: UITableViewController {
    
    var data = [TorScheduleCellData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.dataSource = self
        //tableView.delegate = self
        dayTwo();
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom2")     // Do any additional setup after loading the view.
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
        self.tableView.bounces = true;
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom2") as! CustomCell
        cell.mainImage = data[indexPath.row].mainImage
        cell.iconImage = data[indexPath.row].iconImage
        cell.programName = data[indexPath.row].programName
        
    
        
       // cell.artistName = data[indexPath.row].artist
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
    func dayTwo(){
      /*  data = [
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "12:00 PM"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""),space1: UIImage(named:""), iconImage: UIImage(named:""), programName: "Island Scream Exhibition\n(Sorry Youth)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Home Winds\n(Bao Khanh Vu)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Taiwan New DNA\n(Shih Chien University)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "The Courage\n()"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Taiwan Bookstore\n(TAIWANfest)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Let's Savour Taiwan\n(TAIWANfest)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Let's Savour Taiwan\n(TAIWANfest)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Pig Hero Ring Toss\n(TAIWANfest)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Taiwanese Glove Puppet\n(TAIWANfest)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Vietnamese Water Puppet\n(TAIWANfest)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "TAIWANfest Food Vendors\n(TAIWANfest)"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "12:30 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Taiwan Stage\n(The Story House(Taiwan))"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Robot Prince\n(The Story House (Taiwan))"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "1:00PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Huong Viet Group\n(Huong Viet)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Manfei\n(Huai-En Chen)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Kids Zone\n(TAIWANfest)"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "1:15 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Food - Petit ete\n(Josie Change)"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "1:45 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Taiwan Stage\n(The Story House Taiwan)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Robot Prince\n(The Story House Taiwan)"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "2:30"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Vietnamese Traditional Melodies\n(Tre Viet Perfroming Arts Group)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Taiwan Refocus\n(Wen Cheng Lee)"),
            
            TorScheduleCellData.init(mainImage: UIImage(named: ""), iconImage: UIImage(named:""), programName: "2:45 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Harbour Kids\n(TAIWANfest)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage:UIImage(named:""), programName: "Taiwan Stage\n(The Story House Taiwan)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Robot Prince\n(The Story House Taiwan)"),
            TorScheduleCellData.init(mainImage:UIImage(named:""), iconImage:UIImage(named: ""),programName: "Food - The Alley No.11\n(Allie Huang)"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "4:00 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "My Journey In Taiwan\n(Caroline Nguyn)"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "4:30 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName:"Straight Up\n Moulann"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName:"Kids Zone\n(TAIWANfest)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage:UIImage(named:""), programName: "Taiwan Stage\n(The Story House Taiwan)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Robot Prince\n(The Story House Taiwan)"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "5:30 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Taiwan Street Arts\n(Milkfish Man)"),
            
          
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "5:45 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "The Immortal's Play\n(Li-Chun Lai, Jia-Ru Peng)"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "6:00 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage:UIImage(named:""), programName: "Taiwan Stage\n(The Story House Taiwan)"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Robot Prince\n(The Story House Taiwan)"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "6:15 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Food - Hanoi Celebrity Chef\n(Manh Hung Nguyen)"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "6:30 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "The Spirit of Vietnam\n(Ao Dai Canada)"),
            
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "8:00 PM"),
            TorScheduleCellData.init(mainImage: UIImage(named:""), iconImage: UIImage(named:""), programName: "Stunning Virtuosity\n(Ju Percussion Group)"),
            
 
        ]*/
      
    }
    
}
