//
//  AdapterTest.swift
//  DesignPatternTests
//
//  Created by 0x2ab70001b1 on 2023/12/19.
//

import XCTest

final class AdapterTest: XCTestCase {
    func test_adapter() {
        
        Adapter.startAuth(authServices: WeBoAuthSDK())
        
        Adapter.startAuth(authServices: WeiXinAuthSDK())
    }
}
