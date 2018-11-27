//
//  ViewController.swift
//  Adaptive-Audio-Layout-rh
//
//  Created by Rob Herold on 11/26/18.
//  Copyright © 2018 Rob Herold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var playButton: UIView!
    
    
    @IBOutlet var pauseButton: UIView!
    
    
    @IBOutlet var player: AudioHelper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

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

