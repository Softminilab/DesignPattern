//
//  Depends_on_interface.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/11/20.
//

import Foundation

/// factory pattern
/// Depends_on_interface
protocol Employee3 {
    func dowork()
}

class Designer3: Employee3 {
    func dowork() {
        print("设计.3.正在设计基本结构")
    }
}

class Programmer3: Employee3 {
    func dowork() {
        print("程序.3.正在编写代码")
    }
}

class Tester3: Employee3 {
    func dowork() {
        print("测试.3.正在进行软件测试")
    }
}

class Company3 {
    func getEmployees() -> [Employee3] {
        fatalError("没有实现")
    }
}

class GameDevCompany: Company3 {
    override func getEmployees() -> [Employee3] {
        return [Designer3()]
    }
}

class OutsourcingCompany: Company3 {
    override func getEmployees() -> [Employee3] {
        return [Programmer3(), Tester3()]
    }
}
