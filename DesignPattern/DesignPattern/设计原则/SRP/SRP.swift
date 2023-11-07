//
//  SRP.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/11/7.
//

import Foundation

protocol ConnectionManagerProtocol {
    func digal(phoneNumber: String)
    func hangup()
}

protocol DataTransferProtocol {
    func dataTransfer(cmp: ConnectionManagerProtocol)
}

public struct Phone: ConnectionManagerProtocol & DataTransferProtocol {
    func digal(phoneNumber: String) {
        print("☎️正在拨号 \(phoneNumber)")
    }
    
    func hangup() {
        print("挂断")
    }
    
    func dataTransfer(cmp: ConnectionManagerProtocol) {
//        cmp.digal(phoneNumber: "123456789")
        print("💬A -> B正在聊天")
        print("💬B -> A正在聊天")
//        cmp.hangup()
    }
}
