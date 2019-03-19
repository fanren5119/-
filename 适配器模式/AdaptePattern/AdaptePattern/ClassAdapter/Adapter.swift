//
//  Adapter.swift
//  AdaptePattern
//
//  Created by wanglei on 2019/3/19.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

//角色三:适配器
//类适配器: 实现目标接口,并且继承被适配者
class Adapter: Adaptee & Target {
    func getRMB() -> Double {
        return self.URAMoney * 6.5
    }
}
