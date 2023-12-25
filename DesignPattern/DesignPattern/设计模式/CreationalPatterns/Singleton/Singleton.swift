//
//  Singleton.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/12/18.
//

import Foundation

class Singleton {
    
    static var shared: Singleton = {
        let instance = Singleton()
        return instance
    }()
    
    var value = ""
    
    private init(){}
}

extension Singleton: NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}

extension Singleton: Equatable {
    static func == (lhs: Singleton, rhs: Singleton) -> Bool {
        return lhs.value == rhs.value
    }
}
