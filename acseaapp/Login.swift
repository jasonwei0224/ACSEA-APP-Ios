//
//  Login.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit
import Firebase

import FirebaseAuth
class Login: UIViewController {
    
    @IBOutlet weak var emailTextField:UITextField!
    @IBOutlet weak var passwordTextField:UITextField!
   
    let defaults = UserDefaults.standard
    var agreeToProgramNotification: Bool!
    var agreeToBigPrize: Bool!
    var agreeToReceiveEmail: Bool!
    var city: String!
    var token: String!
    var signedIn: Bool!
    var userid: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //signIn((Any).self)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard(_:)))
        self.view.addGestureRecognizer(tapGesture)
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        signedIn = (defaults.bool(forKey: "signin"))
        if(signedIn){
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let locationMenu = storyBoard.instantiateViewController(withIdentifier: "LocationMenu") as! LocationMenu;
            self.signedIn = true;
            locationMenu.signedIn = true;
            self.present(locationMenu, animated: true, completion: nil)
        }
    }
    
    @objc func dismissKeyboard(_ sender: UITapGestureRecognizer){
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    @IBAction func signIn(_ sender: Any) {
    
            Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){
                (user, error) in
                if error != nil{
                    
                    let alert = UIAlertController(title: "ERROR", message: error?.localizedDescription, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert,animated: true, completion: nil)
                    
                }else{
                    let user = Auth.auth().currentUser
                    InstanceID.instanceID().instanceID{ (result, erorr) in if let error = error{
                        print("error fetching")
                    }else if let result = result{
                        print("Remodte instance id toake: \(result.token)")
                        self.token = result.token
                        let myDatabse = Database.database().reference()
                        myDatabse.child("user/\(user!.uid)/token").setValue([self.token])
                        }
                    }
                    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                    let locationMenu = storyBoard.instantiateViewController(withIdentifier: "LocationMenu") as! LocationMenu;
                    self.signedIn = true;
                    self.defaults.set(self.signedIn, forKey: "signin")
                    self.defaults.synchronize()
                    locationMenu.signedIn = true;
                    self.present(locationMenu, animated: true, completion: nil)
                }
            
        }
        
    }
    @IBAction func startTorSponsor(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorPrivacyPolicy = storyBoard.instantiateViewController(withIdentifier: "TorPrivacyPolicy") as! TorPrivacyPolicy;
        TorPrivacyPolicy.loggedIn = false
        self.present(TorPrivacyPolicy, animated: true, completion: nil)
    }
    
    @IBAction func startTorTermOfUse(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorTermOfUse = storyBoard.instantiateViewController(withIdentifier: "TorTermOfUse") as! TorTermOfUse;
        TorTermOfUse.loggedIn = false
        self.present(TorTermOfUse, animated: true, completion: nil)
    }
    @IBAction func startRegister(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let register = storyBoard.instantiateViewController(withIdentifier:  "Register")as!
        Register;
        self.present(register, animated: true, completion: nil)
    }
}
