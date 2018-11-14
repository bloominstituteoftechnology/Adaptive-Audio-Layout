//
//  ViewController.swift
//  Adaptive Auto Layout
//
//  Created by Ivan Caldwell on 11/13/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBOutlet var player: AudioHelper!
    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
            player.pause()
       
    }
    
}

