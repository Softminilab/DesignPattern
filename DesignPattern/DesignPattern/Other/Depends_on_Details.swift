//
//  Depends_on_interface.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/11/20.
//

import Foundation

/// Depends On Details

class Company {
    func buildSoftware() {
        let designer = Designer()
        let programmer = Programmer()
        let tester = Tester()
        
        designer.designArchitecture()
        programmer.writeCode()
        tester.testSoftware()
    }
}

class Designer {
    func designArchitecture() {
        print("Designer 设计架构")
    }
}

class Programmer {
    func writeCode() {
        print("Programmer 正在写代码")
    }
}

class Tester {
    func testSoftware() {
        print("测试 正在测试软件")
    }
}

