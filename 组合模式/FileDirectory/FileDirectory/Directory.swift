//
//  Directory.swift
//  FileDirectory
//
//  Created by wanglei on 2019/4/8.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

//角色二:具体的子节点
class Directory: DirectoryProtocol {

    var path: String
    
    var directoryArray: [DirectoryProtocol]
    
    init(path: String) {
        self.path = path
        self.directoryArray = [DirectoryProtocol]()
    }
    
    func addDirectory(directory: DirectoryProtocol) {
        self.directoryArray.append(directory)
        
        // 可以在这里创建目录
    }
    
    func removeDirectory(directory: DirectoryProtocol) {
        for i in 0..<self.directoryArray.count {
            if self.directoryArray[i].path == directory.path {
                self.directoryArray.remove(at: i)
                //可以在这里删除目录
                break
            }
        }
    }
    
    func removeAll() {
        self.directoryArray.removeAll()
        
        //可以在这里删除所有的目录
    }
    
    func directoryCount() -> Int {
        return self.directoryArray.count
    }
}
