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
    var items: [AVPlayerItem] = []
    
    override init() {
        self.player = AVPlayer()
        super.init()
        
        loadItems()

        self.player.replaceCurrentItem(with: items.first)
    }
    
    func play() {
        player.play()
    }
    
    func pause() {
        player.pause()
    }
    
    func next() {
        defer {
            let beginning = player.currentTime() - player.currentTime()
            player.seek(to: beginning)
        }
        guard let currentItem = player.currentItem, let currentIndex = items.index(of: currentItem) else {
            player.replaceCurrentItem(with: items.first)
            return
        }
        
        let newIndex = (currentIndex + 1) < items.count ? currentIndex + 1 : 0
        player.replaceCurrentItem(with: items[newIndex])
    }
    
    
    private func loadItems() {
        for streamrequest in urls {
            guard let url = URL(string:streamrequest) else {
                fatalError("Bad URL configuration")
            }
            let asset = AVAsset(url: url)
            let item = AVPlayerItem(asset: asset)
            items.append(item)
        }
    }
    
    let urls = ["https://archive.org/download/78_grieg-piano-concerto_freddy-martin-and-his-orchestra-jack-fina-ray-austin_gbia0019618a/Grieg%20Piano%20Concerto%20-%20Freddy%20Martin%20and%20his%20Orchestra.mp3", "https://ia800607.us.archive.org/21/items/78_a-duke-ellington-panorama_duke-ellington-and-his-famous-orchestra-ellington-miley-d_gbia0003362/Delta%20Serenade%20-%20Duke%20Ellington%20and%20his%20Famous%20Orchestra.mp3"]
}
