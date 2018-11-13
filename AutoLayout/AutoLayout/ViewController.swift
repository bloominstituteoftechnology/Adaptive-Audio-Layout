import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var play: UIBarButtonItem!
    
    @IBOutlet weak var pause: UIBarButtonItem!
    
    @IBOutlet var player: AudioHelper!

    @IBAction func play(_ sender: Any) {
        play.isEnabled = false
        pause.isEnabled = true
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        play.isEnabled = true
        pause.isEnabled = false
        player.pause()
    }
}

