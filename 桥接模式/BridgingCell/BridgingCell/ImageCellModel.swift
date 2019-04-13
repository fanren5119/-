//
//  ImageCellModel.swift
//  BridgingCell
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ImageCellModel: CellModel {
    
    var imageURL: String
    
    init(imageURL: String) {
        self.imageURL = imageURL
        super.init()
        self.cellType = .image
    }
    
    override func getIdentifier() -> String {
        
        let index = self.isUserSend ? 1 : 0
        return "ImageCellModel_\(index)"
    }
    
    override func getHeight() -> Float {
        return 100.0
    }
}
