import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIBarButtonItem!
    @IBOutlet weak var pauseButton: UIBarButtonItem!
    @IBOutlet weak var nowPlayingLabel: UILabel!
    
    @IBOutlet var player: AudioHelper!
    
    
    @IBAction func play(_ sender: Any) {
        playButton.isEnabled = false
        pauseButton.isEnabled = true
        player.play()
        
//        if playButton.isEnabled == false {
//            nowPlayingLabel.text = "Now Playing"
//        }
    }
    
    @IBAction func pause(_ sender: Any) {
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        player.pause()
        
//        if playButton.isEnabled == true {
//            nowPlayingLabel.text = ""
//        }
    }
}

