//
//  BuilderParams.swift
//  AlertControllerBuilder
//
//  Created by wanglei on 2019/4/2.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation
import UIKit

//角色四:参数类
//构建者其实构建的是参数类,而我们在组装类里面,其实是根据参数去组装alertController
class BuilderParams {
    
    var context: UIViewController?
    var title: String?
    var message: String?
    var ok: String?
    var cancel: String?
    var okAction: ((UIAlertAction) -> Void)?
    var cancelAction: ((UIAlertAction) -> Void)?
    
    init(_ context: UIViewController?) {
        self.context = context
    }
    
    func setTitle(_ title: String?) {
        self.title = title
    }
    
    func setMessage(_ message: String?) {
        self.message = message
    }
    
    func setOk(_ ok: String?) {
        self.ok = ok
    }
    
    func setCancel(_ cancel: String?) {
        self.cancel = cancel
    }
    
    func setOkAction(_ okAction: ((UIAlertAction) -> Void)?) {
        self.okAction = okAction
    }
    
    func setCancelAction(_ cancelAction: ((UIAlertAction) -> Void)?) {
        self.cancelAction = cancelAction
    }
}
