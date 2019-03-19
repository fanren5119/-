//
//  ObjectAdapter.swift
//  AdaptePattern
//
//  Created by wanglei on 2019/3/19.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色三: 适配器
//实现目标接口
//持有被适配者的引用
class ObjectAdapter : ObjectTarget {
    var adaptee: ObjectAdaptee
    
    init(adaptee: ObjectAdaptee) {
        self.adaptee = adaptee
    }
    
    func getRMB() -> Double {
        return self.adaptee.URAMoney * 6.5
    }
}
