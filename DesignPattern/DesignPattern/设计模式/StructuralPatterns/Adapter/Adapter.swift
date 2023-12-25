//
//  Adapter.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/12/19.
//

import Foundation
import UIKit

class Adapter {
    static func startAuth(authServices: AuthService) {
        let vc = UIViewController()
        authServices.presentAuthFlow(from: vc)
    }
}

protocol AuthService {
    func presentAuthFlow(from viewController: UIViewController)
}

class WeiXinAuthSDK: AuthService {
    func presentAuthFlow(from viewController: UIViewController) {
        self.startAuthorization(with: viewController)
    }
    
    func startAuthorization(with viewController: UIViewController) {
        print("WeiXin implement ...")
    }
}

class WeBoAuthSDK: AuthService {
    func presentAuthFlow(from viewController: UIViewController) {
        self.startAuthorization(with: viewController)
    }
    
    func startAuthorization(with viewController: UIViewController) {
        print("WeBo implement ...")
    }
}
