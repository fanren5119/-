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
        
        let rect = CGRect(origin: self.direction.contentOrigin!, size: CGSize(width: 100, height: 50))
        self.contentImageView = UIImageView(frame: rect)
        self.contentView.addSubview(self.contentImageView)
    }

}
