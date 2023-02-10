//
//  SmartPhone.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/8.
//

open class SmartPhone {
    var name: String
    var color: String
    var capacity: Int
    
    init(name: String, color: String, capacity: Int) {
        self.name = name
        self.color = color
        self.capacity = capacity
    }
    
    func clone() -> SmartPhone {
        return SmartPhone(name: self.name, color: self.color, capacity: self.capacity)
    }
}

extension SmartPhone: CustomStringConvertible {
    public var description: String {
        return """
{
name: \(name),
color: \(color),
capacity: \(capacity)
}
"""
    }
}
