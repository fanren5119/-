//
//  LoginPresenter.swift
//  MVPTest
//
//  Created by wanglei on 2019/4/15.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色二: 具体的中介者
class LoginPresenter: PresenterProtocol {
    
    var loginModel: LoginModel
    
    var loginView: ViewProtocol?
    
    init() {
        self.loginModel = LoginModel()
    }
    
    func attach(view: ViewProtocol) {
        self.loginView = view
    }
    
    func deattach() {
        self.loginView = nil
    }
    
    
    func login(phone: String, psw: String) {
        self.loginModel.login(phone: phone, psw: psw) { (success) in
            self.loginView?.handleResult(result: success)
        }
    }
}
