//
//  ViewController.swift
//  Lambda Player
//
//  Created by Stuart on 11/26/18.
//  Copyright © 2018 Stuart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIBarButtonItem!
    
    @IBOutlet weak var pauseButton: UIBarButtonItem!
    
    @IBOutlet var player: AudioHelper!
    
    @IBAction func play(_ sender: Any) {
        playButton.isEnabled = false
        pauseButton.isEnabled = true
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        player.pause()
    }


}

