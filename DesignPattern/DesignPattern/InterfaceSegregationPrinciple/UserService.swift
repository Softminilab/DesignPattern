//
//  UserService.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/1/10.
//

struct UserInfo {}

protocol UserService {
    func register(phoneNumber: String, password: String) -> Bool
    func login(phoneNumber: String, password: String) -> Bool
    func getUserInfoById(id: Int64) -> UserInfo
    func getUserInfoByphoneNumber(phoneNumber: String) -> UserInfo
}

protocol RestrictedUserService {
    func deleteUserById(id: Int64) -> Bool
    func deleteUserByPhoneNumber(phoneNumber: String) -> Bool
}

class UserServiceImpl: UserService & RestrictedUserService {
    func register(phoneNumber: String, password: String) -> Bool {
        return false
    }
    
    func login(phoneNumber: String, password: String) -> Bool {
        return false
    }
    
    func getUserInfoById(id: Int64) -> UserInfo {
        return UserInfo()
    }
    
    func getUserInfoByphoneNumber(phoneNumber: String) -> UserInfo {
        return UserInfo()
    }
    
    func deleteUserById(id: Int64) -> Bool {
        return false
    }
    
    func deleteUserByPhoneNumber(phoneNumber: String) -> Bool {
        return false
    }
    
}
