//
//  RandomPassword.swift
//  check
//
//  Created by Risul Rashed
//

import Foundation

struct RandomPassword{
    func randomString() -> String {
        //let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%&*"
        let UpCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let lowCase = "abcdefghijklmnopqrstuvwxyz"
        let numbers = "0123456789"
        let spacialChar = "!@#$%&*"
        //return String((0..<length).map{ _ in letters.randomElement()! })
        var newPassword = String((0..<3).map{ _ in UpCase.randomElement()! })
        newPassword += String((0..<3).map{ _ in lowCase.randomElement()! })
        newPassword += String((0..<2).map{ _ in numbers.randomElement()! })
        newPassword += String((0..<2).map{ _ in spacialChar.randomElement()! })
        return String(newPassword.shuffled())
    }
}
