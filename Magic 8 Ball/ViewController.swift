//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Shou Heng Tan on 8/03/2016.
//  Copyright © 2016 ShouHeng Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    //MARK: Properties
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var imgball: UIImageView!
    @IBOutlet weak var imgbackground: UIImageView!
    @IBOutlet weak var labeltext: UILabel!
    @IBOutlet weak var shakebutton: UIButton!
    
    let bm = EightballModel (extraResponseArray: ["Hello World", "😈"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text.delegate = self
        
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
        if text.text == "" {
            
        }
        
        else {
            generateResponse(bm)
        }
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if text.text == "" {
            
        }
        
        else {
            generateResponse(bm)
        }
        
        text.resignFirstResponder()
        return true;
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Function
    func generateResponse(mb: EightballModel) {
        let randomindex = Int(arc4random_uniform(UInt32(mb.responseArray.count)))
        let randomcircleindex = Int(arc4random_uniform(UInt32(6))) + 1
        let imagename = "circle" + String(randomcircleindex)
        
        imgball.image = UIImage(named: imagename)
        
        self.labeltext.alpha = 1
        self.labeltext.text = bm.responseArray[randomindex]
        print(mb.responseArray[randomindex])
    }

    
}

