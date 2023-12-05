//
//  Depends_on_Details_Test.swift
//  DesignPatternTests
//
//  Created by 0x2ab70001b1 on 2023/11/20.
//

import XCTest

final class Depends_on_Interface_Test: XCTestCase {

    func test_Depends_on_Interface() {
        let dod = Company2()
        dod.createSoftware()
        print("2 Done ...")
    }
}
