//
//  EightBallModel.swift
//  Magic 8 Ball
//
//  Created by Shou Heng Tan on 8/03/2016.
//  Copyright © 2016 ShouHeng Tan. All rights reserved.
//

import Foundation

class EightballModel {
    var responseArray : Array<String> = []
    let initialResponseArray = "Ask again later"
    let extraResponseArray : Array<String> = [  "It is certain",
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
        responseArray[0] = initialResponseArray
    }
    
    init(extraResponseArray : Array<String>) {
        for index in 1...19 {
            responseArray[index] = extraResponseArray[index - 1]
        }
    }
}

