//
//  Depends_on_interface.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/11/20.
//

import Foundation

/// factory pattern
/// Depends_on_interface
protocol Employee {
    func dowork()
}

class Company2 {
    func createSoftware() {
        let employees: [Employee] = [
        Designer2(),
        Programmer2(),
        Tester2()
        ]
        
        for employee in employees {
            employee.dowork()
        }
    }
}

class Designer2: Employee {
    func dowork() {
        print("设计 正在设计基本结构")
    }
}

class Programmer2: Employee {
    func dowork() {
        print("程序 正在编写代码")
    }
}

class Tester2: Employee {
    func dowork() {
        print("测试 正在进行软件测试")
    }
}
