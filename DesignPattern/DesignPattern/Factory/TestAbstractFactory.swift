//
//  TestAbstractFactory.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/4.
//

class TestAbstractFactory {
    static func test() {
        let client = Client(factory: HisenseFactory())
        print(client.tv)
        print(client.freezer)
    }
}

