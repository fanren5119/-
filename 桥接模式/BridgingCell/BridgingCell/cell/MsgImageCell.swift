//
//  MsgImageCell.swift
//  BridgingCell
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class MsgImageCell: MsgCell {

    var contentImageView: UIImageView!
    
    override func createContent() {
        
        let size = CGSize(width: 100, height: 50)
        let rect = self.direction.contentRect(size:size)
        self.contentImageView = UIImageView(frame: rect)
        self.contentView.addSubview(self.contentImageView)
    }

    override func resetUI(model: CellModel) {
        let imageModel = model as? ImageCellModel
        self.contentImageView.image = UIImage(named: imageModel!.imageURL)
    }
}
