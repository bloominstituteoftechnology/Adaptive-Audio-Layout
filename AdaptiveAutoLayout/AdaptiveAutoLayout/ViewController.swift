//
//  ViewController.swift
//  AdaptiveAutoLayout
//
//  Created by Dillon McElhinney on 11/26/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIBarButtonItem!
    @IBOutlet weak var pauseButton: UIBarButtonItem!
    @IBOutlet var audioHelper: AudioHelper!
    @IBOutlet weak var infoLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func play(_ sender: Any) {
        toggleButtons()
        audioHelper.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        toggleButtons()
        audioHelper.pause()
    }
    
    @IBAction func skipForward(_ sender: Any) {
        audioHelper.next()
    }
    
    private func toggleButtons() {
        playButton.isEnabled.toggle()
        pauseButton.isEnabled.toggle()
    }
    
}

