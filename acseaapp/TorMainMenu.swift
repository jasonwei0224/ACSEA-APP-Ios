//
//  TorMainMenu.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class TorMainMenu: UIViewController {

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

    @IBAction func startTorAbout(_ sender: Any,forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorAbout = storyBoard.instantiateViewController(withIdentifier: "TorAbout") as! TorAbout;
        self.present(TorAbout, animated: true, completion: nil)
    }
    
    @IBAction func startTorVenueMap(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorVenueMap = storyBoard.instantiateViewController(withIdentifier: "TorVenueMap") as! TorVenueMap;
        self.present(TorVenueMap, animated: true, completion: nil)
    }
    
    @IBAction func startTorFunStop(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorRule = storyBoard.instantiateViewController(withIdentifier: "TorRule") as! TorRule;
        self.present(TorRule, animated: true, completion: nil)
    }
    
    @IBAction func startTorSponsor(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorSponsor = storyBoard.instantiateViewController(withIdentifier: "TorSponsor") as! TorSponsor;
        self.present(TorSponsor, animated: true, completion: nil)
    }

    @IBAction func startTorSchedule(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorSchedule = storyBoard.instantiateViewController(withIdentifier: "TorSchedule") as! TorSchedule;
        self.present(TorSchedule, animated: true, completion: nil)
    }
    
    @IBAction func startTorPrivacyPolicy(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorPrivacyPolicy = storyBoard.instantiateViewController(withIdentifier: "TorPrivacyPolicy") as! TorPrivacyPolicy;
        TorPrivacyPolicy.loggedIn = true
        self.present(TorPrivacyPolicy, animated: true, completion: nil)
    }
    @IBAction func startTorTermOfUse(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorTermOfUse = storyBoard.instantiateViewController(withIdentifier: "TorTermOfUse") as! TorTermOfUse;
        TorTermOfUse.loggedIn = true
        self.present(TorTermOfUse, animated: true, completion: nil)
    }
}
