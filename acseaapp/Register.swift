//
//  Register.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth
class Register: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var agreeToProgramNotificationSwitch: UISwitch!
    @IBOutlet weak var agreeToBigPrizeSwitch: UISwitch!
    @IBOutlet weak var agreeToReceiveEmailSwitch: UISwitch!
    @IBOutlet weak var pickerView: UIPickerView!
    private var city = ""
    private var token: String!
    private let dataSource = ["Toronto", "Vancouver"]
    
    let defaults = UserDefaults.standard
    var agreeToProgramNotification: Bool!
    var agreeToBigPrize: Bool!
    var agreeToReceiveEmail: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard(_:)))
          self.view.addGestureRecognizer(tapGesture)
        
    }
   
    @objc func dismissKeyboard(_ sender: UITapGestureRecognizer){
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }
   

    @IBAction func sendVerificationEmail(_ sender: Any) {
        let myDatabse = Database.database().reference()
        pickerView.dataSource = self
        pickerView.delegate = self
        agreeToBigPrize = agreeToBigPrizeSwitch.isOn;
        agreeToReceiveEmail = agreeToReceiveEmailSwitch.isOn;
        agreeToProgramNotification = agreeToProgramNotificationSwitch.isOn;
        if(agreeToReceiveEmail == false ){
            let alert = UIAlertController(title: "ERROR", message: "Must agree to use the app" ,preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert,animated: true, completion: nil)
            return
        }
        Auth.auth().createUser(withEmail: emailField.text!, password: passwordField.text!){
            (user, error) in
            if error != nil {
                let alert = UIAlertController(title: "ERROR", message: error?.localizedDescription, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert,animated: true, completion: nil)
                }
            
        else if error == nil{
                Auth.auth().currentUser?.sendEmailVerification{
                    (error) in
                    if error != nil{
                        let alert = UIAlertController(title: "ERROR", message: error?.localizedDescription, preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(alert,animated: true, completion: nil)
                    
                    }
                    else{
                        let user = Auth.auth().currentUser
                        
                        let alert = UIAlertController(title: "Verification Email Sent", message: "Please verfiy your email", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(alert,animated: true, completion: nil)
                        InstanceID.instanceID().instanceID{ (result, erorr) in if let error = error{
                            print("error fetching")
                        }else if let result = result{
                            print("Remodte instance id toake: \(result.token)")
                            self.token = result.token
                            myDatabse.child("user/\(user!.uid)").setValue(["email": self.emailField.text, "agreeToReceiveEmail": self.agreeToReceiveEmail, "agreeToProgramNotification": self.agreeToProgramNotification, "agreeToBigPrize": self.agreeToBigPrize, "token": self.token])
                            }
                        }
                    }
                }
            }
        }
    }
}

extension Register: UIPickerViewDelegate, UIPickerViewDataSource{
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent componenet: Int) -> Int{
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        city = dataSource[row]
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }

    
}
