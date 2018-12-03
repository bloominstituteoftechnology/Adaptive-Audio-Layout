//
//  ViewController.swift
//  Adaptive-Audio-Layout
//
//  Created by Vijay Das on 12/3/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var player: AudioHelper!
    @IBOutlet weak var playButton: UIBarButtonItem!
    @IBOutlet weak var pauseButton: UIBarButtonItem!
    
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

