//
//  TextCellModel.swift
//  BridgingCell
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class TextCellModel: CellModel {

    var text: String
    
    init(text: String) {
        self.text = text
        super.init()
        self.cellType = .text
    }
    
    override func getIdentifier() -> String {
        
        let index = self.isUserSend ? 1 : 0
        return "TextCellModel_\(index)"
    }
    
    override func getHeight() -> Float {
        return 64.0
    }
}
