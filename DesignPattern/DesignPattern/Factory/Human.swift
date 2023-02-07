//
//  Human.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/1.
//

protocol Human {
    func getColor()
    func talk()
    init()
}

struct YellowHuman: Human {
    func getColor() {
        print("黄色人的皮肤是黄色")
    }
    
    func talk() {
        print("黄种人一般都说双字节")
    }
}

struct BlackHuman: Human {
    func getColor() {
        print("黑种人的皮肤都是黑色")
    }
    
    func talk() {
        print("黑种人说的话，你听不懂")
    }
}

struct WhiteHuman: Human {
    func getColor() {
        print("白种人的皮肤都是白色的")
    }
    
    func talk() {
        print("白种人说的都是单字节")
    }
}

protocol AbstractHumanFactory {
    func createHuman<T: Human>(type: T.Type) -> T
}

struct HumanFactory: AbstractHumanFactory {
    func createHuman<T: Human>(type: T.Type) -> T {
        return type.init()
    }
}

struct NvWa {
    static func invoker() {
        let baGuaLu = HumanFactory()

        let blackHuman = baGuaLu.createHuman(type: BlackHuman.self)
        blackHuman.getColor()
        blackHuman.talk()

        let whiteHuman = baGuaLu.createHuman(type: WhiteHuman.self)
        whiteHuman.getColor()
        whiteHuman.talk()

        let yellowHuman = baGuaLu.createHuman(type: YellowHuman.self)
        yellowHuman.getColor()
        yellowHuman.talk()
    }
}


