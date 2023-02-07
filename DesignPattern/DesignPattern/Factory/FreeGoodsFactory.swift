//
//  FreeGoodsFactory.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/4.
//

import Foundation

class FreeGoodsFactory {
    static func getInstance(awardTyp: Int) -> IFreeGoods? {
        var good: IFreeGoods?
        if awardTyp == 1 {
            good = DiscountFreeGood()
        } else if awardTyp == 2 {
            good = YouKuFreeGood()
        } else if awardTyp == 3{
            good = SmallGiftFreeGood()
        }
        return good
    }
}
