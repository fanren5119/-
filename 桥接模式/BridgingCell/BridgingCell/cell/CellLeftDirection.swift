//
//  CellLeftDirection.swift
//  BridgingCell
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation
import UIKit

class CellLeftDirection: CellDirection {
    
    var avatarFrame: CGRect? {
        get {
            return CGRect(x: 10, y: 10, width: 44, height: 44)
        }
    }
    
    func contentRect(size: CGSize) -> CGRect {
        return CGRect(x: 64, y: 10, width: size.width, height: size.height)
    }
}
