//
//  LSP.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/11/9.
//

import Foundation

protocol AbstractGun {
    func shoot()
}

class Rifle: AbstractGun {
    func shoot() {
        print("步枪射击....")
    }
}

class HandGun: AbstractGun {
    func shoot() {
        print("手枪射击....")
    }
}

class MachineGun: AbstractGun {
    func shoot() {
        print("机枪射击....")
    }
}

class Soldier {
    private let abstrctGun: AbstractGun
    
    init(abstrctGun: AbstractGun) {
        self.abstrctGun = abstrctGun
    }
    
    func killEnemy() {
        print("士兵开始杀敌人...")
        abstrctGun.shoot()
    }
}
