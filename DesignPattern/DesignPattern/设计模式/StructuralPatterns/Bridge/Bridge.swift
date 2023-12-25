//
//  Bridge.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/12/21.
//

import Foundation

protocol Device {
    func isEnabled() -> Bool
    func enable()
    func disable()
    func getVolume() -> Double
    func setVolume(percent: Double)
    func getChannel() -> Int
    func setChannel(channel: Int)
}

class TV: Device {
    private var volume = 0.0
    private var channel = 0
    
    func isEnabled() -> Bool {
        return true
    }
    
    func enable() {
        print("enable")
    }
    
    func disable() {
        print("disable")
    }
    
    func getVolume() -> Double {
        print("getVolume")
        return volume
    }
    
    func setVolume(percent: Double) {
        print(#function)
        self.volume = percent
    }
    
    func getChannel() -> Int {
        print(#function)
        return channel
    }
    
    func setChannel(channel: Int) {
        print(#function)
        self.channel = channel
    }
}

class Radio: Device {
    private var volume = 0.0
    private var channel = 0
    
    func isEnabled() -> Bool {
        return true
    }
    
    func enable() {
        print("Radio" + "enable")
    }
    
    func disable() {
        print("Radio" + "disable")
    }
    
    func getVolume() -> Double {
        print("Radio" + "getVolume")
        return volume
    }
    
    func setVolume(percent: Double) {
        print("Radio" + #function)
        self.volume = percent
    }
    
    func getChannel() -> Int {
        print("Radio" + #function)
        return channel
    }
    
    func setChannel(channel: Int) {
        print("Radio" + #function)
        self.channel = channel
    }
}

class RemoteControl {
    fileprivate var device: Device
    
    init(deivce: Device) {
        self.device = deivce
    }
    
    func togglePower() {
        if device.isEnabled() {
            device.disable()
        } else {
            device.enable()
        }
    }
    
    func volumeDown() {
        device.setVolume(percent: device.getVolume() - 10)
    }
    
    func volumeUp() {
        device.setVolume(percent: device.getVolume() + 10)
    }
    
    func channelDown() {
        device.setChannel(channel: device.getChannel() + 1)
    }
    
    func channelUp() {
        device.setChannel(channel: device.getChannel() - 1)
    }
}

class AdvanceRemoteControl: RemoteControl {
    func mute() {
        device.setVolume(percent: 0)
    }
}
