//
//  ConcretePlayer.swift
//  TemplatePattern
//
//  Created by wanglei on 2019/4/2.
//  Copyright © 2019 wanglei. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit

class ConcretePlayer: TemplatePlayer {
    
    var player : AVPlayer?
    var playerItem : AVPlayerItem?
    var playerLayer : AVPlayerLayer?
    
    override func createPlayer(url: URL) {
        self.playerItem = AVPlayerItem(url: url)
        self.player = AVPlayer(playerItem: self.playerItem)
    }
    
    override func createPlayerLayer(context: UIViewController, rect: CGRect) {
        self.playerLayer = AVPlayerLayer(player: self.player)
        self.playerLayer?.frame = rect
        context.view.layer.addSublayer(self.playerLayer!)
    }
    
    override func registerNotification() {
        self.playerItem?.addObserver(self, forKeyPath: "status", options: .new, context: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(playerEnd), name: NSNotification.Name(rawValue: AVPlayerItemFailedToPlayToEndTimeErrorKey), object: nil)
    }
    
    override func startPlay() {
        self.player?.play()
    }
    
    override func stop() {
        
    }
    
    @objc func playerEnd() {
        
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        self.playerItem?.removeObserver(self, forKeyPath: "status")
    }
    
}
