//
//  Interest.swift
//  SwiftUISela
//
//  Created by 焦国辉 on 2021/12/6.
//

import Foundation
import simd

enum InterestType: String {
    case ar, shop, billboard, other
}

enum Erea: String {
    case none       = ""
    case studio     = "Studio"
    case timeSquare = "Time Square"
    case fountain   = "Fountain"
    
}

struct Interest {
    var id: Int
    var poiID:String
    var erea: Erea
//    var name: String
//    var introduction: String
    var imageUrl: String
//    var position: vector_float3
    var isCheckPoint: Bool
    var isCripple: Bool
    var bgColor: String
}

extension Interest {
    var name: String {
        return "Boulevard Sign"
    }
    
    var length: String {
        return "340m"
    }
    
    var waitingTime: Int {
        return 0
    }
}
