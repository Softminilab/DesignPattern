//
//  MobiKeBuilder.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/6.
//

class MobiKeBuilder: Builder {
    var bike = Bike()
    
    init() {
        print("欢迎来到膜拜自行车建造车间")
    }
    
    func buildFrame() {
        print("铝合金车声框架")
        bike.frame = "铝合金"
    }
    
    func buildSeat() {
        print("真皮车座")
        bike.seat = "真皮"
    }
    
    func createBike() -> Bike {
        return bike
    }
}
