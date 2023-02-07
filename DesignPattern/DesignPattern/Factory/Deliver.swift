//
//  DeliverController.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/4.
//

class Deliver {
    func awardToUser(awardInfo: AwardInfo) -> ResponseResult? {
        guard let freeGoods = FreeGoodsFactory.getInstance(awardTyp: awardInfo.awardTypes) else { return nil}
        
        return freeGoods.sendFreeGoods(awardInfo: awardInfo)
    }
}
