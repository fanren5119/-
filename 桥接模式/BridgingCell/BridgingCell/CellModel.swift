//
//  CellModel.swift
//  BridgingCell
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

enum CellType: Int {
    case text = 0
    case image = 1
}

class CellModel: NSObject {

    var cellType = CellType.text
    
    var isUserSend = false
    
    func getIdentifier() -> String {
        return ""
    }
    
    func getHeight() -> Float {
        return 0.0
    }
}
