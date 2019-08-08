//
//  SponsorTableViewController.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit
struct VanSponsorCellData{
    let image  : UIImage?
    let sponsortype: String?

}
class VanSponsorTableViewController: UITableViewController {
    
    var data = [VanSponsorCellData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sponsor();
        
        self.tableView.register(SponsorTableCell.self, forCellReuseIdentifier: "sponsor")     // Do any additional setup after loading the view.
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
        self.tableView.backgroundColor = UIColor.clear
        self.tableView.separatorColor = UIColor.black
        
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "sponsor") as! SponsorTableCell
        
            //cell.typeView.isHidden = true
            //cell.typeView.heightAnchor.constraint(equalToConstant: 15).isActive = true
            cell.backgroundColor = UIColor.clear
            cell.mainImageView.backgroundColor = UIColor.clear
            cell.typeView.backgroundColor = UIColor.clear
            cell.mainImage = data[indexPath.row].image
            cell.type = data[indexPath.row].sponsortype
            cell.typeView.font = UIFont(name: "Arial-BoldMT", size: 24)
            cell.typeView.textAlignment = .center
        
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
    func sponsor(){
        data = [VanSponsorCellData.init(image: UIImage(named:"acsea.jpg"), sponsortype: "ORGANIZER"),
                VanSponsorCellData.init(image:UIImage(named:"swact.jpg"), sponsortype: "CO-ORGANIZER"),
                
                
                VanSponsorCellData.init(image:UIImage(named:"govcanada.jpg"),sponsortype: "GOVERNMENT"),
                VanSponsorCellData.init(image:UIImage(named:"govheritabe.jpg"),sponsortype: ""),
                VanSponsorCellData.init(image:UIImage(named:"govcouncilofart.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named:"govroc.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named:"govspolight.jpg"),sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named:"govbc.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named:"govcityofvan.jpg"), sponsortype: ""),
                
                VanSponsorCellData.init(image: UIImage(named:"aircanada.jpg"),sponsortype: "OFFICIAL AIRLINE"),
                VanSponsorCellData.init(image: UIImage(named:"fairchildtv.jpg"), sponsortype: "DIAMOND"),
                VanSponsorCellData.init(image: UIImage(named:"talenttv.jpg"), sponsortype: ""),
                
                VanSponsorCellData.init(image: UIImage(named: "georgiastraight.jpg"), sponsortype: "GOLD"),
                VanSponsorCellData.init(image: UIImage(named: "am1470.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "fm961.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "news1130.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "yangming.jpg"), sponsortype: ""),
                
                VanSponsorCellData.init(image: UIImage(named: "dvbia.jpg"), sponsortype: "SILVER"),
                VanSponsorCellData.init(image: UIImage(named: "edwardjone.jpg"),sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "singtao.jpg"), sponsortype: "BRONZE"),
                VanSponsorCellData.init(image: UIImage(named: "mingbao.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "epochtime.jpg"), sponsortype:""),
                VanSponsorCellData.init(image: UIImage(named: "encorp.jpg"),sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "mpm.jpg"), sponsortype: "COMMUNITY SPONSORS"),
                VanSponsorCellData.init(image: UIImage(named: "seach.jpg"), sponsortype: "MAJOR PARTNERS"),
                VanSponsorCellData.init(image: UIImage(named: "civictheatre"),sponsortype: "PARTNERS"),
                VanSponsorCellData.init(image: UIImage(named: "vag.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "twtourism.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "nxne.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "viff.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "nfb.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "writerfest.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "mov.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "fullcircle.jpg"),sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "faubourg.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "cuppy.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "shihchien.jpg"), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "shenyi.jpg" ), sponsortype: ""),
                VanSponsorCellData.init(image: UIImage(named: "storyhouse.jpg"), sponsortype: ""),
                //VanSponsorCellData.init(image: UIImage(named: ""), sponsortype: "")
        ]
        self.tableView.register(SponsorTableCell.self, forCellReuseIdentifier: "custom2")
    }
    
}
