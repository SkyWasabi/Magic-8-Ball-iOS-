//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Shou Heng Tan on 8/03/2016.
//  Copyright © 2016 ShouHeng Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var imgball: UIImageView!
    @IBOutlet weak var imgbackground: UIImageView!
    @IBOutlet weak var labeltext: UILabel!
    @IBOutlet weak var shakebutton: UIButton!
    
    let bm = EightballModel (extraResponseArray: ["Hello World", "😈"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let age : Double = 21
        let name = "Tan Shou Heng"
        print("Tan Shou Heng")
        print(String(format: "%.2f", age))
        print(name)
        
        
        
        print("Will I get full marks for this lab")
        generateResponse(bm)
        
        print("Will the cronull sharks receive a premiership this year")
        generateResponse(bm)

        print("Will I end up becoming a cat person when i get old")
        generateResponse(bm)

        print(bm)
        
        debugPrint(bm)
        
        
        
        
        
    }

    @IBAction func shakebuttonclick(sender: AnyObject) {
        let randomindex = Int(arc4random_uniform(UInt32(bm.responseArray.count)))
        self.labeltext.text = bm.responseArray[randomindex]
        
    }
    
    @IBAction func textfieldfunction(sender: AnyObject) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateResponse(mb: EightballModel) {
        let randomindex = Int(arc4random_uniform(UInt32(mb.responseArray.count)))
        print(mb.responseArray[randomindex])
    }

}

