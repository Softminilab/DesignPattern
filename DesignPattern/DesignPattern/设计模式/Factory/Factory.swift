//
//  Factory.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/12/5.
//

import Foundation

protocol Product {
    func doStuff()
}

class ProductA: Product {
    func doStuff() {
        print(NSStringFromClass(Self.self))
    }
}

class ProductB: Product {
    func doStuff() {
        print(NSStringFromClass(Self.self))
    }
}

protocol Creator {
    func factoryMethod() -> Product
}

class ConcreteCreator1: Creator {
    func factoryMethod() -> Product {
        ProductA()
    }
}

class ConcreteCreator2: Creator {
    func factoryMethod() -> Product {
        ProductB()
    }
}

class Client {
    static func callFactoryMethod(creator: Creator) {
        creator.factoryMethod().doStuff()
    }
}
