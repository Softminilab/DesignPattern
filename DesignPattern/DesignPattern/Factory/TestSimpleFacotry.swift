//
//  SimpleFacotryTest.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/4.
//

class TestSimpleFacotry {
    private static let deliver = Deliver()
    
    static func testDiscount() {
        var awardInfo = AwardInfo()
        awardInfo.awardTypes = 1
        awardInfo.uid = "1212121212"
        awardInfo.awardNumber = "3423549741"
        let result = deliver.awardToUser(awardInfo: awardInfo)
        print(result)
    }
    
    static func testSmallGift() {
        var awardInfo = AwardInfo()
        awardInfo.awardTypes = 3
        awardInfo.uid = "121212121212"
        awardInfo.awardNumber = "3421233549741"
        awardInfo.extDic = [
            "address": "中国北京"
        ]
        let result = deliver.awardToUser(awardInfo: awardInfo)
        print(result)
    }
    
    static func testYouKu() {
        var awardInfo = AwardInfo()
        awardInfo.awardTypes = 2
        awardInfo.uid = "12121221212"
        awardInfo.awardNumber = "342354912741"
        awardInfo.extDic = [
            "phone": "18192876542"
        ]
        let result = deliver.awardToUser(awardInfo: awardInfo)
        print(result)
    }
}
