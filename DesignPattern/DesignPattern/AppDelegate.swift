//
//  AppDelegate.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/1/9.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//         LSP
//        let blackTheme = BlackTheme()
//        let app = App(theme: blackTheme)
//        app.applyColor()
        
        // Law of demter
        let agent = Agent(
            start: Star(name: "Kare"),
            fans: Fans(name: "peng", address: "天街八号"),
            company: Company(name: "天宝传媒集团")
        )
        
        agent.business()
        agent.metting()
        return true
    }
}
