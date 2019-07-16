//
//  TorPrivacyPolicy.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class TorPrivacyPolicy: UIViewController {
    var loggedIn: Bool!
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

    @IBAction func startTorMainMenu(_ sender: Any, forEvent event: UIEvent) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        if(loggedIn){
            let TorMainMenu = storyBoard.instantiateViewController(withIdentifier: "TorMainMenu") as! TorMainMenu;
            self.present(TorMainMenu, animated: true, completion: nil)
        }else{
            let login = storyBoard.instantiateViewController(withIdentifier: "Login") as! Login;
            self.present(login, animated: true, completion: nil)
        }
        
        
    }
    
}
