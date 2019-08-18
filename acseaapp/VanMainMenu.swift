//
//  VanMainMenu.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit
import GoogleMobileAds

class VanMainMenu: UIViewController {
    
    var bannerView: GADBannerView!
    
    @IBOutlet weak var aboutbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        addBannerViewToView(bannerView)
        bannerView.adUnitID = "ca-app-pub-1748064502558088~4171565215"
        
        //Test Unit ID: ca-app-pub-3940256099942544/2934735716
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        // Do any additional setup after loading the view.
    }
    func addBannerViewToView(_ bannerView: GADBannerView){
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints([NSLayoutConstraint(item: bannerView, attribute: .bottom, relatedBy: .equal, toItem: self.aboutbtn, attribute: .top, multiplier: 1, constant: -20),
            NSLayoutConstraint(item: bannerView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func startlocation(_ sender:Any, forEvent event:UIEvent){
        let storyBoard: UIStoryboard =  UIStoryboard(name:"Main" ,bundle:nil)
        let LocationMenu = storyBoard.instantiateViewController(withIdentifier: "LocationMenu") as! LocationMenu
        self.present(LocationMenu, animated: true, completion: nil)
    }

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
    @IBAction func startVanPrivacyPolicy(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanPrivacyPolicy = storyBoard.instantiateViewController(withIdentifier: "VanPrivacyPolicy") as! VanPrivacyPolicy;
        VanPrivacyPolicy.loggedIn = true
        self.present(VanPrivacyPolicy, animated: true, completion: nil)
    }
    @IBAction func startVanTermOfUse(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanTermOfUse = storyBoard.instantiateViewController(withIdentifier: "VanTermOfUse") as! VanTermOfUse;
        VanTermOfUse.loggedIn = true
        self.present(VanTermOfUse, animated: true, completion: nil)
    }
}
