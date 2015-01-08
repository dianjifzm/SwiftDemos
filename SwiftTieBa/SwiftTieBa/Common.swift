//
//  Common.swift
//  SwiftTieBa
//
//  Created by fzming on 15/1/9.
//  Copyright (c) 2015年 fzming. All rights reserved.
//

import Foundation

let strArray = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.".componentsSeparatedByString(" ")

let names = ["小张","波波","大刘","喵喵","土豆","二傻"]

func randomStr() ->String {
    return " ".join(strArray[0...Int(arc4random_uniform(UInt32(strArray.count)))])
}

func randomName() ->String {
    return names[Int(arc4random_uniform(UInt32(names.count)))]
}

func randomAnswerCountStr() ->String {
    return "\(arc4random_uniform(UInt32(10000)))"
}