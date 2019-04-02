//
//  TemplatePlayer.swift
//  TemplatePattern
//
//  Created by wanglei on 2019/4/2.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation
import UIKit

class TemplatePlayer: NSObject {
    
    final func play(url: URL, context: UIViewController, rect: CGRect) {
        self.createPlayer(url: url)
        self.createPlayerLayer(context: context, rect: rect)
        self.registerNotification()
        self.startPlay()
    }
    
    
    func createPlayer(url: URL) {
        
    }
    
    func createPlayerLayer(context: UIViewController, rect: CGRect) {
        
    }
    
    func registerNotification() {
        
    }
    
    func startPlay() {
        
    }
    
    func stop() {
        
    }
}
