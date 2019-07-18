//
//  VanPrivacyPolicy.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class VanPrivacyPolicy: UIViewController {
    var loggedIn: Bool!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startVanMenuActivity(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if(loggedIn){
            let VanMainMenu = storyBoard.instantiateViewController(withIdentifier: "VanMainMenu") as! VanMainMenu;
            self.present(VanMainMenu, animated: true, completion: nil)
        }
        else{
            let login = storyBoard.instantiateViewController(withIdentifier: "Login") as! Login;
            self.present(login, animated: true, completion: nil)
        }
    }
}
