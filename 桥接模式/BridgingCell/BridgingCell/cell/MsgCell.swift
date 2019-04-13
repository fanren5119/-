//
//  MsgCell.swift
//  BridgingCell
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class MsgCell: UITableViewCell {
    
    var direction: CellDirection
    var avatarImageView: UIImageView!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        let direct = MsgCell.getDirection(reuseIdentifier: reuseIdentifier)
        if direct == 0 {
            self.direction = CellLeftDirection()
        } else {
            self.direction = CellRightDirection()
        }
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.createUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    static func getDirection(reuseIdentifier: String?) -> Int {
        if let string = reuseIdentifier {
            let array = string.split(separator: "_")
            if array.count > 1 {
                let indexStr = String(array[1])
                return Int(indexStr) ?? 0
            }
        }
        return 0
    }
    
    func createUI() {
        self.createAvatar()
        self.createContent()
    }
    
    func createAvatar() {
        self.avatarImageView = UIImageView(frame: self.direction.avatarFrame!)
        self.avatarImageView.backgroundColor = UIColor.red
        self.contentView.addSubview(self.avatarImageView)
    }
    
    func createContent() {
        
    }
    
    func resetUI(model: CellModel) {
        
    }
}
