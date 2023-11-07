//
//  SRPTest.swift
//  DesignPatternTests
//
//  Created by 0x2ab70001b1 on 2023/11/7.
//

import XCTest

final class SRPTest: XCTestCase {

    override func setUpWithError() throws {
        let phone = Phone()
        phone.digal(phoneNumber: "11111")
        phone.dataTransfer(cmp: phone)
        phone.hangup()
    }
}
