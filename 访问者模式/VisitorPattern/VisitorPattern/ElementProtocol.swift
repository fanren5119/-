//
//  ElementProtocol.swift
//  VisitorPattern
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色三: 抽象的元素接口
protocol ElementProtocol {
    
    func accept(visitor: VisitorProtocol)
}
