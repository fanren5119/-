//
//  Phone.swift
//  FacadePattern
//
//  Created by wanglei on 2019/4/14.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation

// 角色一: 系统对外统一接口
class Phone {
    
    var photo: PhotoProtocol
    var call: CallProtocol
    var music: MusicProtocol
    
    init() {
        self.photo = Photo()
        self.call = Call()
        self.music = Music()
    }
    
    func takePhoto() {
        self.photo.takePhoto()
    }
    
    func takeCall() {
        self.call.call()
    }
    
    func playMusic() {
        self.music.playMusic() 
    }
    
    
}
