protocol IUserBo {
    func getUserName()
}

protocol IUserBiz {
    func changePassword() -> Bool
}

protocol IUserInfor: IUserBo, IUserBiz {
}

class UserInfor: IUserInfor {
    func getUserName() {
        print(#function)
    }
    
    func changePassword() -> Bool {
        return true
    }
}

class UserInfor2 {
    func getUserName(userInfo: IUserInfor) {
        userInfo.getUserName()
    }
}

class UserInfor3: IUserInfor {
    func getUserName() {
        print("UserInfor3")
    }
    
    func changePassword() -> Bool {
        return false
    }
}


