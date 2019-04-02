//
//  Builder.swift
//  AlertControllerBuilder
//
//  Created by wanglei on 2019/4/2.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation
import UIKit

//角色二:具体构建者

class Builder {
    
    var params: BuilderParams
    
    init(_ context: UIViewController) {
        self.params = BuilderParams(context)
    }
    
    func setTitle(_ title : String?) -> Builder{
        self.params.setTitle(title)
        return self
    }
    
    func setMessage(_ message : String?) -> Builder{
        self.params.setMessage(message)
        return self
    }
    
    func setOk(_ ok : String?) -> Builder{
        self.params.setOk(ok)
        return self
    }
    
    func setCancel(_ cancel : String?) -> Builder{
        self.params.setCancel(cancel)
        return self
    }
    
    func setOkAction(_ okAction: ((UIAlertAction) -> Void)?) -> Builder{
        self.params.setOkAction(okAction)
        return self
    }
    
    func setCancelAction(_ cancelAction: ((UIAlertAction) -> Void)?) -> Builder{
        self.params.setCancelAction(cancelAction)
        return self
    }
    
    // 构建完成之后,就要开始组装了
    func build() -> DMAlertController {
        return DMAlertController(self.params)
    }
}
