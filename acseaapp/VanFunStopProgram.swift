//
//  VanFunStopProgram.swift
//  acseaapp
//
//  Created by Jason on 2019-06-24.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseDatabase

 class VanFunStopProgram: UIViewController {
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
    var programElevenComplete = false;
    
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
    let programElevenKey = "porgramElevenComplete"
   
    var programOneText = "Taiwan Stage \n(Granville 800 Block)"
    var programTwoText = "Taiwan Bookstore\n(Granville 800 Block)"
    var programThreeText = "Soy Sauce Test\n(Granville 700 Block)"
    var programFourText = "Let's Savour Tawian\n(Granville 700 Block)"
    var programFiveText = "Friendship Kitchen\n(Granville 700 Block)"
    var programSixText = "Taiwan New DNA\n(Granville 600 Block)"
    var programSevenText = "Glove Puppet\n(Granville 600 Block)"
    var programEightText = "VAG Stage \n(VAG Plaza)"
    var programNineText = "Home Winds\n(Robson Plaza)"
    var programTenText = "Hope Talk\n(Annex)"
    var programEleventText = "Fun Stop\n(Granville 700 Block)"
    
    let programOnePhoto = "taiwanstage.jpg"
    let programTwoPhoto = "taiwanbookstorephoto.png"
    let programThreePhoto = "letssavourtaiwan.jpg"
    let programFourPhoto = "kidszonevanoucver.png"
    let programFivePhoto = "taiwanhandpuppet.jpg"
    let programSixPhoto = "friendshipkitchenphoto.png"
    let programSevenPhoto = "annexphoto.png"
    let programEightPhoto = "torontohomewinds.png"
    let programNinePhoto = "sorryyouthexhibition.png"
    let programTenPhoto = "torontotaiwannewdna .png"
    let porgramElevenPhoto = "funstopstation.png"
    
    let defaults = UserDefaults.standard
    
    var funStopComplete = false;
    
    
    override  func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var funStopProgramList = [
            VanFunStopCellData.init(mainImage: UIImage(named:programOnePhoto), message: programOneText),
            VanFunStopCellData.init(mainImage: UIImage(named:programTwoPhoto), message: programTwoText),
            VanFunStopCellData.init(mainImage: UIImage(named:programThreePhoto), message: programThreeText),
            VanFunStopCellData.init(mainImage: UIImage(named:programFourPhoto), message: programFourText),
            VanFunStopCellData.init(mainImage: UIImage(named:programFivePhoto), message: programFiveText),
            VanFunStopCellData.init(mainImage: UIImage(named:programSixPhoto), message: programSixText),
            VanFunStopCellData.init(mainImage: UIImage(named:programSevenPhoto), message: programSevenText),
            VanFunStopCellData.init(mainImage: UIImage(named:programEightPhoto), message: programEightText),
            VanFunStopCellData.init(mainImage: UIImage(named:programNinePhoto), message: programNineText),
            VanFunStopCellData.init(mainImage: UIImage(named:programTenPhoto), message: programTenText),
            VanFunStopCellData.init(mainImage: UIImage(named:porgramElevenPhoto), message: programEleventText),
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
        programElevenComplete = (defaults.bool(forKey: programElevenKey))
        if(segue.identifier == "VanFunStopSegue"){
            let table = segue.destination as! VanFunStopTableViewController
            table.data1 = funStopProgramList
        }
    
        
        if (programOneComplete || programCode == "1"){
            funStopProgramList[0] = VanFunStopCellData.init(mainImage: UIImage(named:programOnePhoto), message: "COMPLETED")
            
            programOneComplete = true;
            self.defaults.set(self.programOneComplete, forKey: programOneKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programTwoComplete || programCode == "2"){
            funStopProgramList[1] = VanFunStopCellData.init(mainImage: UIImage(named:programTwoPhoto), message: "COMPLETED")
            programTwoComplete = true
            self.defaults.set(self.programTwoComplete, forKey: programTwoKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programThreeComplete || programCode == "3"){
            funStopProgramList[2] = VanFunStopCellData.init(mainImage: UIImage(named:programThreePhoto), message: "COMPLETED")
            programThreeComplete = true
            self.defaults.set(self.programThreeComplete, forKey: programThreeKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programFourComplete || programCode == "4"){
            funStopProgramList[3] = VanFunStopCellData.init( mainImage: UIImage(named:programFourPhoto), message: "COMPLETED")
            programFourComplete = true
            self.defaults.set(self.programFourComplete, forKey: programFourKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programFiveComplete || programCode == "5"){
            funStopProgramList[4] = VanFunStopCellData.init(mainImage: UIImage(named:programFivePhoto), message: "COMPLETED")
            programFiveComplete = true
            self.defaults.set(self.programFiveComplete, forKey: programFiveKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programSixComplete || programCode == "6"){
            funStopProgramList[5] = VanFunStopCellData.init(mainImage: UIImage(named:programSixPhoto), message: "COMPLETED")
            programSixComplete = true
            self.defaults.set(self.programSixComplete, forKey: programSixKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programSevenComplete || programCode == "7"){
            funStopProgramList[6] = VanFunStopCellData.init(mainImage: UIImage(named:programSevenPhoto), message: "COMPLETED")
            programSevenComplete = true
            self.defaults.set(self.programSevenComplete, forKey: programSevenKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programEightComplete || programCode == "8"){
            funStopProgramList[7] = VanFunStopCellData.init(mainImage: UIImage(named:programEightPhoto), message: "COMPLETED")
            programEightComplete = true
            self.defaults.set(self.programEightComplete, forKey: programEightKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programNineComplete || programCode == "9"){
            funStopProgramList[8] = VanFunStopCellData.init(mainImage: UIImage(named:programNinePhoto), message: "COMPLETED")
            programNineComplete = true
            self.defaults.set(self.programNineComplete, forKey: programNineKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programTenComplete || programCode == "10"){
            funStopProgramList[9] = VanFunStopCellData.init(mainImage: UIImage(named:programTenPhoto), message: "COMPLETED")
            programTenComplete = true
            self.defaults.set(self.programTenComplete, forKey: programTenKey)
            if(segue.identifier == "VanFunStopSegue"){
                let table = segue.destination as! VanFunStopTableViewController
                table.data1 = funStopProgramList;
            }
        }
        if(programElevenComplete || programCode == "11"){
            if(programOneComplete && programTwoComplete && programThreeComplete && programFourComplete && programFiveComplete && programSixComplete && programSevenComplete && programEightComplete && programNineComplete && programTenComplete){
                funStopProgramList[10] = VanFunStopCellData.init(mainImage: UIImage(named: porgramElevenPhoto), message: "COMPLETED")
                programElevenComplete = true
                self.defaults.set(self.programElevenComplete, forKey: programElevenKey)
                if(segue.identifier == "VanFunStopSegue"){
                    let table = segue.destination as! VanFunStopTableViewController
                    table.data1 = funStopProgramList;
                    let user = Auth.auth().currentUser
                    let uid = user!.uid
                    let myDatabse = Database.database().reference()
                    funStopComplete = true;
                    myDatabse.child("users").child(uid).child("Complete Fun Stop").setValue("Yes")
                }
            }else{
                let alert = UIAlertController(title: "Not Yet!", message: "Please complete all other stations before coming to the funstop staiton", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert,animated: true, completion: nil)
            }
        }
    }
    

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
