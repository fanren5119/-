//
//  LoginModel.swift
//  MVPTest
//
//  Created by wanglei on 2019/4/15.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

class LoginModel: ModelProtocol {
    
    func login(phone: String, psw: String, complete: ((Bool) -> Void)) {
        
        // 调用登录的接口
        complete(true)
    }
    
}
