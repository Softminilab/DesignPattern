//
//  BuilderTest.swift
//  DesignPatternTests
//
//  Created by 0x2ab70001b1 on 2023/12/11.
//

import XCTest

final class BuilderTest: XCTestCase {
    func test_builder() {
        
        let builder = ConcreteBuilder1()
        
        let director = Director()
        director.update(builder: builder)
        
        director.buildMinimalViableProduct()
        builder.retrieveProduct().print()
        
        
        director.buildFullFeaturedProduct()
        builder.retrieveProduct().print()
    }
}
