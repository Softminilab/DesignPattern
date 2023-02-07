//
//  ApplicancesFactory.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/4.
//

protocol ApplicancesFactory {
    func createTV() -> AbstractTV
    func createFreezer() -> AbstractFreezer
}
