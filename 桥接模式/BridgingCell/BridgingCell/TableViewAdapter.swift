//
//  TableViewAdapter.swift
//  BridgingCell
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation
import UIKit

class TableViewAdapter: NSObject & UITableViewDataSource & UITableViewDelegate {
    
    var dataSource = [CellModel]()
    
    override init() {
        super.init()
        self.loadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = self.dataSource[indexPath.row]
        let identifier = model.getIdentifier()
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? MsgCell {
            cell.resetUI(model: model)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let model = self.dataSource[indexPath.row]
        return CGFloat(model.getHeight())
    }
    
    func loadData() {
        
        let text1 = TextCellModel(text: "aaa")
        text1.isUserSend = true
        self.dataSource.append(text1)

        let text2 = TextCellModel(text: "two")
        text2.isUserSend = false
        self.dataSource.append(text2)
        
        let image1 = ImageCellModel(imageURL: "aaa.png")
        image1.isUserSend = true
        self.dataSource.append(image1)
        
        let image2 = ImageCellModel(imageURL: "aaa.png")
        image2.isUserSend = false
        self.dataSource.append(image2)
    }
}
