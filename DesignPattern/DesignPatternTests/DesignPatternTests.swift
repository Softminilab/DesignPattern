//
//  DesignPatternTests.swift
//  DesignPatternTests
//
//  Created by 0x2ab70001b1 on 2023/2/9.
//

import XCTest

final class DesignPatternTests: XCTestCase {
    func testPrototypePattern() {
        let iPhoneSe =  SmartPhone(name: "iPhone SE", color: "Black", capacity: 64)
        
        let iphoneClone = iPhoneSe.clone()
        iphoneClone.color = "red"
        
        let iphoneClone2 = iPhoneSe.clone()
        iphoneClone2.name = "iPhone 14 pro"

        let iphoneClone3 = iPhoneSe.clone()
        iphoneClone3.capacity = 256
        
        print("iphoneClone \(iphoneClone)")
        print("iphoneClone2 \(iphoneClone2)")
        print("iphoneClone3 \(iphoneClone3)")
    }
}
