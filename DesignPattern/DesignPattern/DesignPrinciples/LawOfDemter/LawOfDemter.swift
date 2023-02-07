//
//  LawOfDemter.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/1/11.
//

struct Star {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Fans {
    let name: String
    let address: String
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
}

struct Company {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Agent {
    let star: Star
    let fans: Fans
    let company: Company
    
    init(start: Star, fans: Fans, company: Company) {
        self.star = start
        self.fans = fans
        self.company = company
    }
    
    func metting() {
        print("\(fans.name)与明星\(star.name)见面了")
    }
    
    func business() {
       print("\(company.name)与明星\(star.name)洽谈业务")
    }
}




