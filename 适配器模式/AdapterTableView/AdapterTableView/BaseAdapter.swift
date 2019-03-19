//
//  BaseAdapter.swift
//  AdapterTableView
//
//  Created by wanglei on 2019/3/19.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation
import UIKit


//适配器:
// 目标接口是 UI(UITableViewDataSouce, UITableViewDelegate)
// 被适配者是数据(dataSourceArray)

class BaseAdapter: NSObject & UITableViewDataSource & UITableViewDelegate {
    var dataSouceArray = ["1", "2", "3", "4", "5", "6", "7"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSouceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = dataSouceArray[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
}
