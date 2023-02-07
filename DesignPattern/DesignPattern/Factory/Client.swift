//
//  Client.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/4.
//

class Client {
    let tv: AbstractTV
    let freezer: AbstractFreezer
    
    init(factory: ApplicancesFactory) {
        self.tv = factory.createTV()
        self.freezer = factory.createFreezer()
    }
}
