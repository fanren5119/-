//
//  DMAlertController.swift
//  AlertControllerBuilder
//
//  Created by wanglei on 2019/4/2.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation
import UIKit

//角色三:统一组装类
class DMAlertController {
    var param : BuilderParams
    
    init(_ param: BuilderParams) {
        self.param = param
    }
    
    func show() {
        let alert = UIAlertController(title: self.param.title, message: self.param.message, preferredStyle: .alert)
        if let ok = self.param.ok {
            let action = UIAlertAction(title: ok, style: .default, handler: self.param.okAction)
            alert.addAction(action)
        }
        if let cancel = self.param.cancel {
            let action = UIAlertAction(title: cancel, style: .cancel, handler: self.param.cancelAction)
            alert.addAction(action)
        }
        self.param.context?.present(alert, animated: true, completion: nil)
    }
}
