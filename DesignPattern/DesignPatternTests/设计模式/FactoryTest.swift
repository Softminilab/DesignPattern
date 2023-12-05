//
//  TestFactory.swift
//  DesignPatternTests
//
//  Created by 0x2ab70001b1 on 2023/12/5.
//

import XCTest

final class FactoryTest: XCTestCase {
    func test_callFactoryMethod() {
        Client.callFactoryMethod(creator: ConcreteCreator1())
        
        Client.callFactoryMethod(creator: ConcreteCreator2())
        
        print(#function)
    }
}
