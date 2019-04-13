//
//  MsgTextCell.swift
//  BridgingCell
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class MsgTextCell: MsgCell {

    var contentLabel: UILabel!
    
    override func createContent() {
        
        let size = CGSize(width: 200, height: 30)
        
        let rect = self.direction.contentRect(size:size)
        self.contentLabel = UILabel(frame: rect)
        self.contentView.addSubview(self.contentLabel)
    }

    override func resetUI(model: CellModel) {
        let textModel = model as? TextCellModel
        self.contentLabel.text = textModel?.text
    }
}
