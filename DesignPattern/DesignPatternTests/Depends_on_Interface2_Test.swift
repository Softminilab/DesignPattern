//
//  Depends_on_Details_Test.swift
//  DesignPatternTests
//
//  Created by 0x2ab70001b1 on 2023/11/20.
//

import XCTest

final class Depends_on_Interface2_Test: XCTestCase {

    func test_Depends_on_Interface2() {
        let gameDevCompany = GameDevCompany()
        let employees = gameDevCompany.getEmployees()
        for employee in employees {
            employee.dowork()
        }
        
        print("Depends_on_Interface2_Test Done ...")
    }
}
