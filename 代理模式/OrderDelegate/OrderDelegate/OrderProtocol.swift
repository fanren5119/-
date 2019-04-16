//
//  OrderProtocol.swift
//  OrderDelegate
//
//  Created by wanglei on 2019/4/16.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二: 订单接口
protocol OrderProtocol {
    
    var id: String { set get }
    var name: String { set get }
    var price: String? { set get }
}
