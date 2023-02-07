//
//  HaireFacotry.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/4.
//

class HaireFacotry: ApplicancesFactory {
    func createTV() -> AbstractTV {
        return HairTV()
    }
    
    func createFreezer() -> AbstractFreezer {
        return HairFreezer()
    }
}
