//
//  SponsorTableViewController.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit
struct TorSponsorCell{
    let image  : UIImage?
    let sponsortype: String?
}
class TorSponsorTableViewController: UITableViewController {
    
    var data = [TorSponsorCell]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        torSponsor();
        
        
        self.tableView.register(SponsorTableCell.self, forCellReuseIdentifier: "sponsor")     // Do any additional setup after loading the view.
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
        self.tableView.backgroundColor = UIColor.clear
        self.tableView.separatorColor = UIColor.black
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "sponsor") as! SponsorTableCell
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
    
    func torSponsor(){
        data = [TorSponsorCell.init(image: UIImage(named:"acsea.jpg"), sponsortype: "ORGANIZER"),
                TorSponsorCell.init(image: UIImage(named:"hfc.jpg"), sponsortype: "CO-PRODUCER"),
                TorSponsorCell.init(image: UIImage(named:"swact.jpg"), sponsortype: "CO-ORGANIZER"),
                TorSponsorCell.init(image: UIImage(named:"tcat.jpg"), sponsortype: ""),
                
                TorSponsorCell.init(image: UIImage(named:"govcanada.jpg"),sponsortype: "GOVERNMENT"),
                TorSponsorCell.init(image: UIImage(named:"govheritabe.jpg"),sponsortype: ""),
                TorSponsorCell.init(image: UIImage(named:"govcouncilofart.jpg"), sponsortype: ""),
                TorSponsorCell.init(image: UIImage(named:"govroc.jpg"), sponsortype: ""),
                TorSponsorCell.init(image: UIImage(named:"govspolight.jpg"),sponsortype: ""),
                
                TorSponsorCell.init(image: UIImage(named:"celebrateontario.jpg"), sponsortype: ""),
                TorSponsorCell.init(image: UIImage(named:"metrosquare.jpg"), sponsortype: "DIAMOND"),
                TorSponsorCell.init(image: UIImage(named:"fairchildtv.jpg"), sponsortype: ""),
                TorSponsorCell.init(image: UIImage(named:"talenttv.jpg"), sponsortype: ""),
                
                TorSponsorCell.init(image: UIImage(named: "thoimoi.jpg"), sponsortype: ""),
                TorSponsorCell.init(image: UIImage(named: "am1430.jpg"), sponsortype: "GOLD"),
                TorSponsorCell.init(image: UIImage(named: "fm889.jpg"), sponsortype: ""),
                TorSponsorCell.init(image: UIImage(named: "yangming.jpg"), sponsortype: ""),
                
                TorSponsorCell.init(image: UIImage(named: "blogto.jpg"), sponsortype: "SILVER"),
                //TorSponsorCell.init(image: UIImage(named: "singtao.jpg"), sponsortype: "BRONZE"),
                TorSponsorCell.init(image: UIImage(named: "mingbao.jpg"), sponsortype: "BRONZE"),
                TorSponsorCell.init(image: UIImage(named: "epochtime.jpg"), sponsortype:""),
                TorSponsorCell.init(image: UIImage(named: "vat.jpg"),sponsortype: "MAJOR PARTNER"),
                TorSponsorCell.init(image: UIImage(named: "testt.jpg"), sponsortype: ""),
                TorSponsorCell.init(image: UIImage(named: "nxne.jpg"), sponsortype: "PARTNERS"),
                TorSponsorCell.init(image: UIImage(named: "vccm.jpg"), sponsortype: ""),
                TorSponsorCell.init(image: UIImage(named: "ytmat.jpg"), sponsortype: ""),
                TorSponsorCell.init(image: UIImage(named: "shihchien.jpg"), sponsortype: ""),
                TorSponsorCell.init(image: UIImage(named: "shenyi.jpg" ), sponsortype: ""),
                TorSponsorCell.init(image: UIImage(named: "storyhouse.jpg"), sponsortype: ""),
                
        ]
    }
    
}
