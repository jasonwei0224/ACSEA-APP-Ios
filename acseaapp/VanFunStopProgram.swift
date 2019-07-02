//
//  VanFunStopProgram.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class VanFunStopProgram: UIViewController {

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

    @IBAction func startVanFunStopMap(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name:"Main", bundle: nil)
        let VanFunStopMap = storyBoard.instantiateViewController(withIdentifier: "VanFunStopMap") as! VanFunStopMap;
        self.present(VanFunStopMap, animated: true, completion: nil)
    }
    
    @IBAction func startVanFunStopRule(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanFunStopRule = storyBoard.instantiateViewController(withIdentifier: "VanFunStopRule") as! VanFunStopRule;
        self.present(VanFunStopRule, animated: true, completion: nil)
    }
    @IBAction func startVanFunStopCamera(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanQRCodeScanner = storyBoard.instantiateViewController(withIdentifier: "VanQRCodeScanner") as! VanQRCodeScanner;
        self.present(VanQRCodeScanner, animated: true, completion: nil)
    }
    @IBAction func startVanMainMenu(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanMainMenu = storyBoard.instantiateViewController(withIdentifier: "VanMainMenu") as! VanMainMenu;
        self.present(VanMainMenu, animated: true, completion: nil)
    }
}
