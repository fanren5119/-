//
//  Directory.swift
//  FileDirectory
//
//  Created by wanglei on 2019/4/8.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

//角色一:抽象根节点
protocol DirectoryProtocol {
    
    var path: String { get }
    
    var directoryArray: [DirectoryProtocol] { get }
    
    func addDirectory(directory: DirectoryProtocol)
    
    func removeDirectory(directory: DirectoryProtocol)
    
    func removeAll()
    
    func directoryCount() -> Int
}
