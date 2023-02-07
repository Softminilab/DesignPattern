//
//  HaLuBuilder.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/6.
//

class HaLuBuilder: Builder {
    var bike = Bike()
    
    init() {
        print("欢迎来到哈罗自行车建造车间")
    }
    
    func buildFrame() {
        print("碳纤维车身")
        bike.frame = "碳纤维"
    }
    
    func buildSeat() {
        print("软皮车坐")
        bike.seat = "软皮"
    }
    
    func createBike() -> Bike {
        return bike
    }
}
