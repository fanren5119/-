//
//  ViewController.swift
//  FileDirectory
//
//  Created by wanglei on 2019/4/8.
//  Copyright © 2019 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let document = Directory(path: "Document") // 根目录
        
        let image = Directory(path: "Image") // 图片目录
        let video = Directory(path: "Video") //视频目录
        
        document.addDirectory(directory: image)
        document.addDirectory(directory: video)
        
        let headImage = File(path: "aaa.png")
        image.addDirectory(directory: headImage) // 存储图片
    }


}

