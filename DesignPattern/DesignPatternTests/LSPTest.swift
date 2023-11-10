//
//  SRPTest.swift
//  DesignPatternTests
//
//  Created by 0x2ab70001b1 on 2023/11/7.
//

import XCTest

final class LSPTest: XCTestCase {

    override func setUpWithError() throws {
    }
    
    func test_soldier() {
//        let gun = Rifle()
//        let gun = MachineGun()
        let gun = HandGun()
        let solider = Soldier(abstrctGun: gun)
        solider.killEnemy()
    }
}
