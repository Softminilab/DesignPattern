//
//  ResponseResult.swift
//  DesignPattern
//
//  Created by 0x2ab70001b1 on 2023/2/4.
//

struct ResponseResult {
    var message = ""
    var data: Any?
}

extension ResponseResult: CustomStringConvertible {
    var description: String {
        return """
            {
            message: \(message),
            data: \(data)
            }
            """
    }
}
