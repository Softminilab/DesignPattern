//
//  Home.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/1/10.
//

protocol Refrigerator {
    func work()
}

protocol TV {
    func show()
}

protocol Pot {
    func cook()
}


class HaierRefrigerator: Refrigerator {
    func work() {
        print("Make food refresh")
    }
}

class XiaoMiTV: TV {
    func show() {
        print("look tv")
    }
}

class ZwillingPot: Pot {
    func cook() {
        print("Cooking")
    }
}

class Home {
    var refrigerator: Refrigerator
    var tv: TV
    var pot: Pot
    
    init(refrigerator: HaierRefrigerator, tv: XiaoMiTV, pot: ZwillingPot) {
        self.refrigerator = refrigerator
        self.tv = tv
        self.pot = pot
    }
    
    func live() {
        print("Live in home")
        refrigerator.work()
        tv.show()
        pot.cook()
    }
}

class TestHome {
    func test() {
        let home = Home(refrigerator: HaierRefrigerator(), tv: XiaoMiTV(), pot: ZwillingPot())
        home.live()
    }
}
