//
//  BridgeTest.swift
//  DesignPatternTests
//
//  Created by 0x2ab70001b1 on 2023/12/21.
//

import XCTest

final class BridgeTest: XCTestCase {
    func test_bridge() {
        let tv = TV()
        let rc = RemoteControl(deivce: tv)
        rc.togglePower()
        
        let radio = Radio()
        let adrc = AdvanceRemoteControl(deivce: radio)
        adrc.mute()
    }
}
