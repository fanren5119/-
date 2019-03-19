//
//  ViewController.swift
//  AdapterTableView
//
//  Created by wanglei on 2019/3/19.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tableView: UITableView!
    var adapter = BaseAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView = UITableView(frame: self.view.frame, style: .plain)
        self.tableView.dataSource = self.adapter
        self.tableView.delegate = self.adapter
        self.view.addSubview(self.tableView)
        
    }


}

