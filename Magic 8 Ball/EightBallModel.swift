//
//  EightBallModel.swift
//  Magic 8 Ball
//
//  Created by Shou Heng Tan on 8/03/2016.
//  Copyright © 2016 ShouHeng Tan. All rights reserved.
//

import Foundation

class EightballModel : CustomStringConvertible, CustomDebugStringConvertible {
    var responseArray : Array<String> = []
    let initialResponseArray = [  "It is certain",
                                    "Ask again later",
                                    "It is decidedly so",
                                    "Without a doubt",
                                    "Yes, definitely",
                                    "You may rely on it",
                                    "As I see it, yes",
                                    "Most likely",
                                    "Outlook good",
                                    "Yes",
                                    "Signs point to yes",
                                    "Reply hazy try again",
                                    "Better not tell you now",
                                    "Cannot predict now",
                                    "Concentrate and ask again",
                                    "Don't count on it",
                                    "My reply is no",
                                    "My sources say no",
                                    "Outlook not so good",
                                    "Very doubtful" ]
    
    init() {
        responseArray = initialResponseArray
    }
    
    init(extraResponseArray : Array<String>) {
        responseArray = initialResponseArray + extraResponseArray
    }
    
    var sizeOfArray : Int {
        get {
            return responseArray.count
        }
    }
    
    var description: String {
        get {
            var output = "The list of responses is: ";
            
            for response in responseArray
            {
                output += response + ", "
            }
            
            return output;
        }
    }
    
    var debugDescription: String {
        get {
            var output = "Debug reponses:";
            
            for response in responseArray
            {
                output += "Debug" + response + "\n"
            }
            
            return output;
        }
    }
}

