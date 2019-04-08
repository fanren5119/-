//
//  File.swift
//  FileDirectory
//
//  Created by wanglei on 2019/4/8.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

//角色三:叶子节点
//文件,可以存储
class File: DirectoryProtocol {
    var path: String
    
    var directoryArray: [DirectoryProtocol]
    
    init(path: String) {
        self.path = path
        self.directoryArray = [DirectoryProtocol]()
    }
    
    func addDirectory(directory: DirectoryProtocol) {

    }
    
    func removeDirectory(directory: DirectoryProtocol) {

    }
    
    func removeAll() {

    }
    
    func directoryCount() -> Int {
        return self.directoryArray.count
    }
}
