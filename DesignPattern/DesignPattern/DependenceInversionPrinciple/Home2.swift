//
//  Home.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/1/10.
//

class HaierRefrigerator {
    func work() {
        print("Make food refresh")
    }
}

class XiaoMiTV {
    func show() {
        print("look tv")
    }
}

class ZwillingPot {
    func cook() {
        print("Cooking")
    }
}

class Home {
    var refrigerator: HaierRefrigerator
    var tv: XiaoMiTV
    var pot: ZwillingPot
    
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
