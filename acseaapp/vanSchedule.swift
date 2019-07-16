//
//  VanSchedule.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class VanSchedule: UIViewController {
    
    @IBOutlet weak var Day1: UIView!
    @IBOutlet weak var Day2: UIView!
    @IBOutlet weak var Day3: UIView!
    
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
    @IBAction func startVanMenuActivity(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let VanMainMenu = storyBoard.instantiateViewController(withIdentifier: "VanMainMenu") as! VanMainMenu;
        self.present(VanMainMenu, animated: true, completion: nil)
    }
    @IBAction func showDayOne(_ sender: Any) {
        self.Day1.alpha = 1;
        self.Day2.alpha = 0;
        self.Day3.alpha = 0;
    }
    @IBAction func showDayTwo(_ sender: Any) {
        self.Day1.alpha = 0;
        self.Day2.alpha = 1;
        self.Day3.alpha = 0;
    }
    @IBAction func showDayThree(_ sender: Any) {
        self.Day1.alpha = 0;
        self.Day2.alpha = 0;
        self.Day3.alpha = 1;
    }
}
