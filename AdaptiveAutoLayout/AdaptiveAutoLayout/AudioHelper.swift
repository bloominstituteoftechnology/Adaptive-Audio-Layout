//
//  AudioHelper.swift
//  AdaptiveAutoLayout
//
//  Created by Dillon McElhinney on 11/26/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import AVKit

class AudioHelper: NSObject {
    let player: AVPlayer
    
    override init() {
        // Big Buck Bunny
        let streamrequest = "https://www.radiantmediaplayer.com/media/bbb-360p.mp4"
        guard let url = URL(string:streamrequest) else {
            fatalError("Bad URL configuration")
        }
        let asset = AVAsset(url: url)
        let item = AVPlayerItem(asset: asset)
        
        // Create a player member
        self.player = AVPlayer(playerItem: item)
        
        // Init superclass members
        super.init()
    }
    
    func play() {
        player.play()
    }
    
    func pause() {
        player.pause()
    }
}
