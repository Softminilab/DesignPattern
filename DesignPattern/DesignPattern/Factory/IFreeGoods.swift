//
//  IFreeGoods.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/4.
//

// MARK: - Protocol
protocol IFreeGoods {
    func sendFreeGoods(awardInfo: AwardInfo) -> ResponseResult
}

// MARK: - Implement
class DiscountFreeGood: IFreeGoods {
    func sendFreeGoods(awardInfo: AwardInfo) -> ResponseResult {
        print("向用户发送打折券：" + awardInfo.uid + "," + awardInfo.awardNumber)
        return ResponseResult(message: "发送打折券成功")
    }
}

class SmallGiftFreeGood: IFreeGoods {
    func sendFreeGoods(awardInfo: AwardInfo) -> ResponseResult {
        print("向用户发送小礼物：" + awardInfo.uid + "," + awardInfo.awardNumber)
        let address = awardInfo.extDic["address"] ?? ""
        return ResponseResult(message: "发送小礼物成功, 地址是：" + address)
    }
}

class YouKuFreeGood: IFreeGoods {
    func sendFreeGoods(awardInfo: AwardInfo) -> ResponseResult {
        let phone = awardInfo.extDic["phone"] ?? ""
        print("向用户发送YouKu会员，会员手机号码是：" + phone)
        return ResponseResult(message: "发送会员成功")
    }
}
