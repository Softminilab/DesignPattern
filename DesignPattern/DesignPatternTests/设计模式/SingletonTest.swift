//
//  SingletonTest.swift
//  DesignPatternTests
//
//  Created by 0x2ab70001b1 on 2023/12/18.
//

import XCTest

final class SingletonTest: XCTestCase {
    func test_singleton() {
        let singletonA = Singleton.shared
        let singletonB = Singleton.shared
        
        XCTAssertEqual(singletonA, singletonB)
    }
}
