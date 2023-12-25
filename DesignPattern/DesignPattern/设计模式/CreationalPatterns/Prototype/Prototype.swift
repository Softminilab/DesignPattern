//
//  Prototype.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/12/18.
//

import Foundation

class Prototype: NSCopying {
    private(set) var title: String
    private(set) var comments = [Comment]()
    
    init(title: String) {
        self.title = title
        comments.append(Comment(message: title))
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Prototype(title: "Copy " + title)
    }
}

struct Comment {
    let date = Date()
    let message: String
}
