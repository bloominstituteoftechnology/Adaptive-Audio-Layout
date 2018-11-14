

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var playButton: UIBarButtonItem!
    

    @IBOutlet weak var pauseButton: UIBarButtonItem!
    
    @IBOutlet weak var player: AudioHelper!
    
    
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
