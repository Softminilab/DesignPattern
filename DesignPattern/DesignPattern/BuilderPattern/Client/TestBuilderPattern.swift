//
//  Client.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/6.
//

class TestBuilderPattern {
    static func test() {
        let director = Director(mBuild: HaLuBuilder())
        let bike = director.construct()
        print("bike.seat: \(bike.seat)")
        print("bike.frame: \(bike.frame)")
    }
}

