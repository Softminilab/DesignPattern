//
//  Director.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/6.
//

class Director {
    private let mBuild: Builder
    
    init(mBuild: Builder) {
        self.mBuild = mBuild
    }
    
    func construct() -> Bike {
        mBuild.buildFrame()
        mBuild.buildSeat()
        return mBuild.createBike()
    }
}
