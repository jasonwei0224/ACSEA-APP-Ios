//
//  VanScheduleTableViewController.swift
//  
//
//  Created by Jason Wei on 2019-07-30.
//

import UIKit
struct VanScheduleCellData{
    let mainImage  : UIImage?
    let iconImage: UIImage?
    let programName: String?
    //let artist: String?
}
class VanScheduleTableViewController : UITableViewController{
    var data = [VanScheduleCellData]()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        data = [VanScheduleCellData.init(mainImage: UIImage(named:"gobackbtn.png"), iconImage:UIImage(named:"gobackbtn.png"), programName:"Test \n testartist")]
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "customSchedule")     // Do any additional setup after loading the view.
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "customSchedule") as! CustomCell
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
}
