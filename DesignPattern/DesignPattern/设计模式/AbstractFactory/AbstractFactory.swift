//
//  AbstractFactory.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/12/6.
//

import Foundation

// 抽象产品类 -- Button
protocol AbstractProductButton {
    func working()
}

// 抽象产品类 -- CheckBox
protocol AbstractProductCheckBox {
    func working()
}

// 抽象产品具体实现类
class WinButton: AbstractProductButton {
    func working() {
        print("Win Button working")
    }
}

// 抽象产品具体实现类
class MacOSButton: AbstractProductButton {
    func working() {
        print("MacOS Button working")
    }
}

// 抽象产品具体实现类
class WinCheckBox: AbstractProductCheckBox {
    func working() {
        print("Win CheckBox working")
    }
}

// 抽象产品具体实现类
class MacOSCheckBox: AbstractProductCheckBox {
    func working() {
        print("MacOS CheckBox working")
    }
}

// 抽象工厂
protocol AbstractGUIFactory {
    func createButton() -> AbstractProductButton
    func createCheckBox() -> AbstractProductCheckBox
}

// 抽象工厂实现类，返回实现抽象产品类型
class WinFactory: AbstractGUIFactory {
    func createButton() -> AbstractProductButton {
        return WinButton()
    }
    
    func createCheckBox() -> AbstractProductCheckBox {
        return WinCheckBox()
    }
}

// 抽象工厂实现类，返回实现抽象产品类型
class MacOSFactory: AbstractGUIFactory {
    func createButton() -> AbstractProductButton {
        return MacOSButton()
    }
    
    func createCheckBox() -> AbstractProductCheckBox {
        return MacOSCheckBox()
    }
}

class Applications {
    private var factory: AbstractGUIFactory
    
    init(factory: AbstractGUIFactory) {
        self.factory = factory
    }
    
    func createUI() {
        factory.createButton().working()
        factory.createCheckBox().working()
    }
}
