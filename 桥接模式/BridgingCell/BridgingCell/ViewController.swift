//
//  ViewController.swift
//  BridgingCell
//
//  Created by wanglei on 2019/4/13.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView: UITableView!
    var adapter = TableViewAdapter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tableView = UITableView(frame: self.view.bounds, style: .plain)
        self.tableView.delegate = self.adapter
        self.tableView.dataSource = self.adapter
        self.view.addSubview(self.tableView)
        
        self.tableView.register(MsgTextCell.classForCoder(), forCellReuseIdentifier: "TextCellModel_0")
        self.tableView.register(MsgTextCell.classForCoder(), forCellReuseIdentifier: "TextCellModel_1")
        self.tableView.register(MsgImageCell.classForCoder(), forCellReuseIdentifier: "ImageCellModel_0")
        self.tableView.register(MsgImageCell.classForCoder(), forCellReuseIdentifier: "ImageCellModel_1")
        
        self.tableView.reloadData()
    }

}

