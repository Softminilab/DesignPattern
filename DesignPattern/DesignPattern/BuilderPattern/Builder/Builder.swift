//
//  Builder.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/6.
//

protocol Builder {
    var bike: Bike { get }
    func buildFrame()
    func buildSeat()
    func createBike() -> Bike
}
