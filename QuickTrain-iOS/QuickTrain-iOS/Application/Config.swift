//
//  Config.swift
//  QuickTrain-iOS
//
//  Created by Doru Mancila on 13/11/2020.
//

import Foundation

struct Config {
    
    struct Network {
        static let useStaging = false
        
        static var apiBaseUrl: String {
            return "http://localhost:3400"
        }
    }
    
    struct Path {
        static let Documents = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        static let Tmp = NSTemporaryDirectory()
    }
}
