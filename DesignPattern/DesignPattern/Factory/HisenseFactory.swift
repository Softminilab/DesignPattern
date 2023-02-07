//
//  HisenseFactory.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/4.
//

class HisenseFactory: ApplicancesFactory {
    func createTV() -> AbstractTV {
        return HisenseTV()
    }
    
    func createFreezer() -> AbstractFreezer {
        return HisenseFreezer()
    }
}
