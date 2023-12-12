//
//  AbstractFactoryTest.swift
//  DesignPatternTests
//
//  Created by 0x2ab70001b1 on 2023/12/6.
//

import XCTest

final class AbstractFactoryTest: XCTestCase {
    func test_abstractFactory() {
        Applications(factory: WinFactory()).createUI()
        print("--------------")
        Applications(factory: MacOSFactory()).createUI()
    }
}
