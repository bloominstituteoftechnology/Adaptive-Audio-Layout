//
//  ViewController.swift
//  Adaptive Auto Layout
//


import UIKit

class ViewController: UIViewController {

    
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
    
    
    @IBOutlet weak var playButton: UIBarButtonItem!
    
    @IBOutlet weak var pauseButton: UIBarButtonItem!
    
    @IBOutlet var player: AudioHelper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

