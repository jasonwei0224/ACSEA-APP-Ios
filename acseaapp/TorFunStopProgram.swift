//
//  TorFunStopProgram.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class TorFunStopProgram: UIViewController {

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

    @IBAction func startTorFunStopRule(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorRule = storyBoard.instantiateViewController(withIdentifier: "TorRule") as! TorRule;
        self.present(TorRule, animated: true, completion: nil)
    }
    @IBAction func startTorFunStopMap(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorFunStopMap = storyBoard.instantiateViewController(withIdentifier: "TorFunStopMap") as! TorFunStopMap;
        self.present(TorFunStopMap, animated: true, completion: nil)
    }
    @IBAction func startTorCamera(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorQRCodeScanner = storyBoard.instantiateViewController(withIdentifier: "TorQRCodeScanner") as! TorQRCodeScanner;
        self.present(TorQRCodeScanner, animated: true, completion: nil)
    }
    
    @IBAction func startTorMainMenu(_ sender: Any, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorMainMenu = storyBoard.instantiateViewController(withIdentifier: "TorMainMenu") as! TorMainMenu;
        self.present(TorMainMenu, animated: true, completion: nil)
    }
}
