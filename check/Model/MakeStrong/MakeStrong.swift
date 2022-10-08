//
//  MakeStrong.swift
//  check
//
//  Created by Risul Rashed
//

import Foundation
import SwiftUI

struct MakeStrong{
    let lowCase = "abcdefghijklmnopqrstuvwxyz"
    let spacialChar = "!@#$%&*"
    let numbers = "0123456789"
    let change: [String : String] = [
        "a" : "@",
        "b" : "6",
        "c" : "C",
        "d" : "D",
        "e" : "3",
        "f" : "F",
        "g" : "9",
        "h" : "H",
        "i" : "!",
        "j" : "J",
        "k" : "K",
        "l" : "|",
        "m" : "M",
        "n" : "N",
        "o" : "0",
        "p" : "P",
        "q" : "Q",
        "r" : "R",
        "s" : "$",
        "t" : "T",
        "u" : "U",
        "v" : ">",
        "w" : "W",
        "x" : "X",
        "y" : "Y",
        "z" : "Z",
        "A" : "4",
        "B" : "3",
        "C" : "c",
        "D" : "D",
        "E" : "e",
        "F" : "f",
        "G" : "9",
        "H" : "h",
        "I" : "!",
        "J" : "J",
        "K" : "K",
        "L" : "|",
        "M" : "m",
        "N" : "N",
        "O" : "0",
        "P" : "p",
        "Q" : "q",
        "R" : "R",
        "S" : "$",
        "T" : "t",
        "U" : "U",
        "V" : ">",
        "W" : "W",
        "X" : "+",
        "Y" : "Y",
        "Z" : "2",
        ]
    
    func changeIt(password : String) -> String{
        var containNewPassword = ""
        for item in password{
            if change["\(item)"] != nil {
                //print(change["\(item)"]!)
                containNewPassword += String(change["\(item)"]!)
                //containNewPassword = newPassword.replacingOccurrences(of: "\(item)", with: change["\(item)"]!)
            }
        }
        while containNewPassword.count < 9{
            containNewPassword += String(lowCase.randomElement()!)
            containNewPassword += String(spacialChar.randomElement()!)
        }
        containNewPassword += String((0..<2).map{ _ in numbers.randomElement()! })
        containNewPassword += String((0..<2).map{ _ in spacialChar.randomElement()! })
        
        return containNewPassword
    }
}
