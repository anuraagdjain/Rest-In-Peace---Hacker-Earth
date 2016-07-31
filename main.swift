//
//  main.swift
//  Sample
//
//  Created by Anuraag Jain on 31/07/16.
//  Copyright © 2016 Anuraag Jain. All rights reserved.
//

import Foundation

var noCases =  Int(readLine()!)!
while(noCases > 0 ){
    var getValue =  readLine()!
    do{
        let checkReg = try NSRegularExpression(pattern: "(21)|2([0-9]*)1", options: .CaseInsensitive)
        if checkReg.firstMatchInString(getValue, options: .ReportCompletion, range: NSMakeRange(0, getValue.characters.count)) != nil{
            checkReg.pattern
            print("The streak is broken!")
        }
        else{
            if  (Int(getValue)!%21 == 0 ){
                print("The streak is broken!")
            }
            else{
            print("The streak lives still in our heart!")
            }
        }
    }
    catch{
        print("Error")
    }
    noCases -= 1
}

