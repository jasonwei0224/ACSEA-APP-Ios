//
//  VanMainMenu.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class VanMainMenu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func startVanMap(_ sender: Any, forEvent event: UIEvent) {

        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanVenueMap = storyBoard.instantiateViewController(withIdentifier: "VanVenueMap") as! VanVenueMap;
        self.present(VanVenueMap, animated: true, completion: nil)
        
    }
  
    @IBAction func startVanFunStop(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanFunStopRule = storyBoard.instantiateViewController(withIdentifier: "VanFunStopRule") as! VanFunStopRule;
        self.present(VanFunStopRule, animated: true, completion: nil)
    }
    @IBAction func startVanSchedule(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanSchedule = storyBoard.instantiateViewController(withIdentifier: "VanSchedule") as! VanSchedule;
        self.present(VanSchedule, animated: true, completion: nil)
        
    }
    @IBAction func startVanSponsor(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanSponsor = storyBoard.instantiateViewController(withIdentifier: "VanSponsor") as! VanSponsor;
        self.present(VanSponsor, animated: true, completion: nil)
    }
    @IBAction func startVanAbout(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanAbout = storyBoard.instantiateViewController(withIdentifier: "VanAbout") as! VanAbout;
        self.present(VanAbout, animated: true, completion: nil)
        
    }
}
