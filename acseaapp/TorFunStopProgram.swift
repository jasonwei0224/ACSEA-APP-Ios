//
//  VanFunStopProgram.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class TorFunStopProgram: UIViewController {
    var programCode = "0" ;
    var programOneComplete = false;
    var programTwoComplete = false;
    var programThreeComplete = false;
    var programFourComplete = false;
    var programFiveComplete = false;
    var programSixComplete = false;
    var programSevenComplete = false;
    var programEightComplete = false;
    var programNineComplete = false;
    var programTenComplete = false;
    
    let programOneKey = "programOneComplete"
    let programTwoKey = "programTwoComplete"
    let programThreeKey = "programThreeComplete"
    let programFourKey = "programFourComplete"
    let programFiveKey = "programFiveComplete"
    let programSixKey = "programSixComplete"
    let programSevenKey = "programSevenComplete"
    let programEightKey = "programEightComplete"
    let programNineKey = "programNineComplete"
    let programTenKey = "programTenComplete"
    
    var programOneText = "Program One"
    let programTwoText = "Program Two"
    let programThreeText = "Program Three"
    let programFourText = "Program Four"
    let programFiveText = "Program Five"
    let programSixText = "Program Six"
    let programSevenText = "Program Seven"
    let programEightText = "Program Eight"
    let programNineText = "Program Nine"
    let programTenText = "Program Ten"
    
    let defaults = UserDefaults.standard
    
    
    
    
    override  func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var funStopProgramList = [
            TorFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programOneText),
            TorFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programTwoText),
            TorFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programThreeText),
            TorFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programFourText),
            TorFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programFiveText),
            TorFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programSixText),
            TorFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programSevenText),
            TorFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programEightText),
            TorFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programNineText),
            TorFunStopCellData.init(icon: UIImage(named:"gobackbtn.png"), image: UIImage(named:"gobackbtn.png"), message: programTenText),
            
            ];
        
        
        programOneComplete = (defaults.bool(forKey: programOneKey))
        programTwoComplete = (defaults.bool(forKey: programTwoKey))
        programThreeComplete = (defaults.bool(forKey: programThreeKey))
        programFourComplete = (defaults.bool(forKey: programFourKey))
        programFiveComplete = (defaults.bool(forKey: programFiveKey))
        programSixComplete = (defaults.bool(forKey: programSixKey))
        programSevenComplete = (defaults.bool(forKey: programSevenKey))
        programEightComplete = (defaults.bool(forKey: programEightKey))
        programNineComplete = (defaults.bool(forKey: programNineKey))
        programTenComplete = (defaults.bool(forKey: programTenKey))
        if(segue.identifier == "TorFunStopSegue"){
            let table = segue.destination as! TorFunStopTableViewController
            table.data1 = funStopProgramList
        }
        
        
        if (programOneComplete || programCode == "1"){
            funStopProgramList[0] = TorFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p1")
            
            programOneComplete = true;
            self.defaults.set(self.programOneComplete, forKey: programOneKey)
            if(segue.identifier == "TorFunStopSegue"){
                let table = segue.destination as! TorFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programTwoComplete || programCode == "2"){
            funStopProgramList[1] = TorFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p2")
            programTwoComplete = true
            self.defaults.set(self.programTwoComplete, forKey: programTwoKey)
            if(segue.identifier == "TorFunStopSegue"){
                let table = segue.destination as! TorFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programThreeComplete || programCode == "3"){
            funStopProgramList[2] = TorFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p3")
            programThreeComplete = true
            self.defaults.set(self.programThreeComplete, forKey: programThreeKey)
            if(segue.identifier == "TorFunStopSegue"){
                let table = segue.destination as! TorFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programFourComplete || programCode == "4"){
            funStopProgramList[3] = TorFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p4")
            programFourComplete = true
            self.defaults.set(self.programFourComplete, forKey: programFourKey)
            if(segue.identifier == "TorFunStopSegue"){
                let table = segue.destination as! TorFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programFiveComplete || programCode == "5"){
            funStopProgramList[4] = TorFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p5")
            programFiveComplete = true
            self.defaults.set(self.programFiveComplete, forKey: programFiveKey)
            if(segue.identifier == "TorFunStopSegue"){
                let table = segue.destination as! TorFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programSixComplete || programCode == "6"){
            funStopProgramList[5] = TorFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p6")
            programSixComplete = true
            self.defaults.set(self.programSixComplete, forKey: programSixKey)
            if(segue.identifier == "TorFunStopSegue"){
                let table = segue.destination as! TorFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programSevenComplete || programCode == "7"){
            funStopProgramList[6] = TorFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p7")
            programSevenComplete = true
            self.defaults.set(self.programSevenComplete, forKey: programSevenKey)
            if(segue.identifier == "TorFunStopSegue"){
                let table = segue.destination as! TorFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programEightComplete || programCode == "8"){
            funStopProgramList[7] = TorFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p8")
            programEightComplete = true
            self.defaults.set(self.programEightComplete, forKey: programEightKey)
            if(segue.identifier == "TorFunStopSegue"){
                let table = segue.destination as! TorFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programNineComplete || programCode == "9"){
            funStopProgramList[8] = TorFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p9")
            programNineComplete = true
            self.defaults.set(self.programNineComplete, forKey: programNineKey)
            if(segue.identifier == "TorFunStopSegue"){
                let table = segue.destination as! TorFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programTenComplete || programCode == "10"){
            funStopProgramList[9] = TorFunStopCellData.init(icon: UIImage(named:"infobtn.png"), image: UIImage(named:"gobackbtn.png"), message: "p10")
            programTenComplete = true
            self.defaults.set(self.programTenComplete, forKey: programTenKey)
            if(segue.identifier == "TorFunStopSegue"){
                let table = segue.destination as! TorFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        
    }
    
    
    @IBAction func startTorFunStopMap(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name:"Main", bundle: nil)
        let TorFunStopMap = storyBoard.instantiateViewController(withIdentifier: "TorFunStopMap") as! TorFunStopMap;
        self.present(TorFunStopMap, animated: true, completion: nil)
    }
    @IBAction func startTorFunStopRule(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorRule = storyBoard.instantiateViewController(withIdentifier: "TorRule") as! TorRule;
        self.present(TorRule, animated: true, completion: nil)
    }
    @IBAction func startTorFunStopCamera(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorQRCodeScanner = storyBoard.instantiateViewController(withIdentifier: "TorQRCodeScanner") as! TorQRCodeScanner;
        self.present(TorQRCodeScanner, animated: true, completion: nil)
    }
    @IBAction func startTorMainMenu(_ sender: UIButton, forEvent event: UIEvent) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TorMainMenu = storyBoard.instantiateViewController(withIdentifier: "TorMainMenu") as! TorMainMenu;
        self.present(TorMainMenu, animated: true, completion: nil)
    }
    
    
    
}
