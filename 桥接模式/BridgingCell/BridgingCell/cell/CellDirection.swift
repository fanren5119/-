//
//  CellDirection.swift
//  BridgingCell
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation
import UIKit

protocol CellDirection {
    
    var avatarFrame: CGRect? { get }
    
    func contentRect(size: CGSize) -> CGRect
}
