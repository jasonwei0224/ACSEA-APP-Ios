//
//  TorSchedule.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class TorSchedule: UIViewController {
    @IBOutlet weak var containerViewA: UIView!
    @IBOutlet weak var containerViewB: UIView!
    @IBOutlet weak var containerViewC: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
     ///   self.containerViewA.alpha = 1;
       // self.containerViewB.alpha = 0; 

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

    @IBAction func startTorMainMenu(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorMainMenu = storyBoard.instantiateViewController(withIdentifier: "TorMainMenu") as! TorMainMenu;
        self.present(TorMainMenu, animated: true, completion: nil)
    }
    @IBAction func showDayOne(_ sender: UIButton, forEvent event: UIEvent) {
        self.containerViewA.alpha = 1;
        self.containerViewB.alpha = 0;
        self.containerViewC.alpha = 0;
    }
    @IBAction func showDayTwo(_ sender: UIButton, forEvent event: UIEvent) {
        self.containerViewA.alpha = 0;
        self.containerViewB.alpha = 1
        self.containerViewC.alpha = 0;
    }
    @IBAction func showDayThree(_ sender: UIButton, forEvent event: UIEvent) {
        self.containerViewA.alpha = 0;
        self.containerViewB.alpha = 0;
        self.containerViewC.alpha = 1;
    }
}
