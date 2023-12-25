//
//  PrototypeTest.swift
//  DesignPatternTests
//
//  Created by 0x2ab70001b1 on 2023/12/18.
//

import XCTest

final class PrototypeTest: XCTestCase {
    func test_prototype() {
        let pt = Prototype(title: "Prototype pattern")
        
        let copyPt = pt.copy() as? Prototype
        
        XCTAssertNotNil(copyPt?.title)
        XCTAssertGreaterThan(copyPt?.comments.count ?? 0, 0)
    }
}
