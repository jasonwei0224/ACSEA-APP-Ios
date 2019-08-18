//
//  TorMainMenu.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit
import GoogleMobileAds

class TorMainMenu: UIViewController, GADInterstitialDelegate{
    
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
    @IBAction func startlocation(_ sender:Any, forEvent event:UIEvent){
        let storyBoard: UIStoryboard =  UIStoryboard(name:"Main" ,bundle:nil)
        let LocationMenu = storyBoard.instantiateViewController(withIdentifier: "LocationMenu") as! LocationMenu
        self.present(LocationMenu, animated: true, completion: nil)
    }

}
