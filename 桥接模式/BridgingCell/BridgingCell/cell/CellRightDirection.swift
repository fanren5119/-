//
//  CellRightDirection.swift
//  BridgingCell
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation
import UIKit

class CellRightDirection: CellDirection {
    
    var screenWidth = UIScreen.main.bounds.size.width
    
    var avatarFrame: CGRect? {
        get {
            return CGRect(x: screenWidth - 10 - 44, y: 10, width: 44, height: 44)
        }
    }
    
    func contentRect(size: CGSize) -> CGRect {
        return CGRect(x: screenWidth - 64 - size.width, y: 10, width: size.width, height: size.height)
    }
}
