//
//  Register.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit
//import Firebase
//import FirebaseDatabase
//import FirebaseAuth
class Register: UIViewController {
    
    //@IBOutlet weak var emailField: UITextField!
    ////@IBOutlet weak var passwordField: UITextField!
   // @IBOutlet weak var agreeToProgramNotificationSwitch: UISwitch!
   // @IBOutlet weak var agreeToBigPrizeSwitch: UISwitch!
//@IBOutlet weak var agreeToReceiveEmailSwitch: UISwitch!
   @IBOutlet weak var pickerView: UIPickerView!
  private var city = ""
    
   private let dataSource = ["Toronto", "Vancouver"]
    
    
  //  var agreeToProgramNotification: Boolean
   // var agreeToBigPrize: Boolean
   // var agreeToReceiveEmail: Boolean
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
     //   var email: String = emailField.text!
       // var passord: String = passwordField.text!

        pickerView.dataSource = self
        pickerView.delegate = self
        //agreeToBigPrize = agreeToBigPrizeSwitch.isOn;
       // agreeToReceiveEmail = agreeToReceiveEmailSwitch.isOn;
        //agreeToProgramNotification = agreeToProgramNotificationSwitch.isOn;
        
        //Auth.auth().createUser(withEmail: email, password :password){
          //  (user, Error) in
            //if(Error!=null){
              //  print(Error)
            //}
            //else{
              //  print("Registerd")
                
            //}
        //}
        //Auth.auth().currentUser?.sendEmailVerification()
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
