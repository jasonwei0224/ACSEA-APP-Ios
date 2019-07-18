//
//  SponsorTableViewController.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class VabScheduleTableViewController2: UITableViewController {
    
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
        cell.mainImage = data[indexPath.row].image
        cell.message = data[indexPath.row].message
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
        data = [VanScheduleCellData.init(image: UIImage(named:"gobackbtn.png"), message: "Riding the waves with vietnam Cocnert \nBy maestro ken hsieh" ), VanScheduleCellData.init(image: UIImage(named:"gobackbtn.png"), message: "One" ), VanScheduleCellData.init(image: UIImage(named:"gobackbtn.png"), message: "One" ), VanScheduleCellData.init(image: UIImage(named:"gobackbtn.png"), message: "One" ), VanScheduleCellData.init(image: UIImage(named:"gobackbtn.png"), message: "One" ), VanScheduleCellData.init(image: UIImage(named:"gobackbtn.png"), message: "One" ), ]
        self.tableView.register(FunStopCell.self, forCellReuseIdentifier: "custom")
    }
    
}
