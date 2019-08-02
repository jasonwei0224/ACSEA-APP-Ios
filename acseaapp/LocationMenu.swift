//
//  LocationMenu.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth

class LocationMenu: UIViewController {
    var token: String!
    var signedIn: Bool!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let user = Auth.auth().currentUser
        InstanceID.instanceID().instanceID{ (result, erorr) in
            if let result = result{
            //print("Remodte instance id toake: \(result.token)")
            self.token = result.token
            let myDatabse = Database.database().reference()
              //  myDatabse.child("users/\(user!.uid)/token").setValue(self.token)
            }
        }
        
        //print(user?.email)
        if(user == nil){
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let locationMenu = storyBoard.instantiateViewController(withIdentifier: "LocationMenu") as! LocationMenu;
            self.signedIn = true;
            locationMenu.signedIn = true;
           // self.present(locationMenu, animated: true, completion: nil)
        }
    }

    
    @IBAction func startVanActivity(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanMainMenu = storyBoard.instantiateViewController(withIdentifier: "VanMainMenu") as! VanMainMenu;
        self.present(VanMainMenu, animated: true, completion: nil)
    }
   
    @IBAction func startTorMenu(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorMainMenu = storyBoard.instantiateViewController(withIdentifier: "TorMainMenu") as! TorMainMenu;
        self.present(TorMainMenu, animated: true, completion: nil)
    }
}
