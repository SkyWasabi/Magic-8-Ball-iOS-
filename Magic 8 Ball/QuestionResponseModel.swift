//
//  QuestionResponseModel.swift
//  Magic 8 Ball
//
//  Created by Tan Shou Heng on 12/04/2016.
//  Copyright © 2016 ShouHeng Tan. All rights reserved.
//

import Foundation

class QuestionResponseModel : NSObject, NSCoding{
    var question : String = ""
    var answer : String = ""
    
    static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    
    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("questionarray")
    
    struct key {
        static let questionkey = "question"
        static let answerkey = "answer"
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(question, forKey: key.questionkey)
        aCoder.encodeObject(answer,forKey: key.answerkey)
    }
    
    required convenience init?(coder aDecoder : NSCoder) {
        let question = aDecoder.decodeIntForKey(key.questionkey) as! String
        let answer = aDecoder.decodeIntForKey(key.answerkey) as! String
        
        self.init(q : question, a : answer)
        
    }
    
    override init() {
        question = ""
        answer = ""
    }
    
    init?(q : String, a : String) {
        self.question = q
        self.answer = a
        
        super.init()
        
        if question.isEmpty {
            return nil
        }
    }
    
    
    
    func settheQuestion(q:String) {
        question = q
    }
    
    func settheAnswer(a:String) {
        answer = a
    }
    
    func display() {
        print(question)
        print(answer)
    }

}