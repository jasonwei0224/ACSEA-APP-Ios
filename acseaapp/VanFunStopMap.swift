//
//  VanFunStopMap.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class VanFunStopMap: UIViewController {
    var test1: String!
    
    @IBOutlet weak var test:UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        test.text = test1
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

    @IBAction func startVanFunStop(_ sender: UIButton, forEvent event: UIEvent) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vanFunStopProgram = storyBoard.instantiateViewController(withIdentifier: "VanFunStopProgram") as! VanFunStopProgram;
        self.present(vanFunStopProgram, animated: true, completion: nil)
    
    }
  

}
