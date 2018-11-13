# Module Challenge: Auto Layout I - Adaptive Auto Layout

This challenge allows you to practice the concepts and techniques learned in today's guided lesson and apply them in a concrete project. Your lesson explored Auto Layout. You demonstrate proficiency by creating an application that showcases the same features you learned in class.

## Instructions

**Read these instructions carefully. Understand exactly what is expected _before_ starting this Challenge.**

This is an individual assessment but you are permitted to consult with and support other members of your cohort. You are encouraged to follow the twenty-minute rule and seek support from your PM and Instructor in your cohort help channel on Slack. 

## Commits

Commit your code regularly and meaningfully. This helps both you (in case you ever need to return to old code for any number of reasons) and your project manager.

## Description

In this challenge, you build an interface that automatically adapts itself to portrait and landscape orientations.

Your completed application will look like the following video:

[![](https://img.youtube.com/vi/FBtgEpkw1BI/0.jpg)](https://youtu.be/FBtgEpkw1BI)

## Questions

Demonstrate your understanding of today's concepts by answering the following free-form questions. Submit them as a text file along with your project.

* What is auto layout and why do iOS developers use it?
* What is a constraint? Are compression resistance and content hugging constraints?
* What role does priority play? When do you adjust priority?
* When should you use stack views? What advantages do stack views offer?
* How does text autoshrink work and what are its advantages and disadvantages?

## Project Setup

Follow these steps to set up your project skeleton:

1. Create a new iOS single view project. Clean it up as you like.
1. In Main.storyboard, add three views: a toolbar, a label, and an image view.
1. Create a new file called AudioHelper.swift and populate it with this code:

```
import AVKit

class AudioHelper: NSObject {
  let player: AVPlayer
  
  override init() {
    // Big Buck Bunny
    let streamrequest = "https://www.radiantmediaplayer.com/media/bbb-360p.mp4"
    guard let url = URL(string:streamrequest) else {
      fatalError("Bad URL configuration")
    }
    let asset = AVAsset(url: url)
    let item = AVPlayerItem(asset: asset)
    
    // Create a player member
    self.player = AVPlayer(playerItem: item)
    
    // Init superclass members
    super.init()
  }
  
  func play() {
    player.play()
  }
  
  func pause() {
    player.pause()
  }  
}
```

## IB Layout

Populate the toolbar with five items: a flexible space followed by a button (label it with the system Play item), a fixed space, another button (with the system Pause item), and another flexible space. Use the attributes inspector to disable the pause button.

Use constraints to place the toolbar flush against the bottom safe area, and abutting the leading and trailing safe areas.

Use the included radio image from Pexels.com. Without resizing the image, add it to an image view. Set the content mode to scale aspect fill. Enable Clips to Bounds.

Create a label with the text "Lambda Radio FM: Voice of the Future". Set the font size to 48 points and select any font face other than the system default. Enable Autoshrink as Minimum Font Scale and set its value to 0.1. Set the number of lines to 2. Center the text.

Add constraints that stretch the toolbar flush against the bottom, left, and right of your view.

## Orientation Layout

Next, you set up constraints for separate horizontal and vertical layouts. Don't forget to to choose "Vary for traits", select an orientation, and add the constraints needed for these designs.

Create a horizontal layout where the image view sits on the left of the screen and the text view is to its right, aligning their vertical centers. Leave 20-point spaces between the image view and the Lambda Radio label. Leave at least 20 points between the Lambda Radio label and the trailing view edge. The image view should take up no more than 40% of the horizontal safe space.

Create a vertical layout where the image view sits at the top of the screen and the text view is beneath it, aligning their horizontal centers. Leave space between the image view, the label, and the bottom toolbar.


## Connectinging up the Project

1. Create an instance of the AudioHelper class in Interface Builder by adding an Object from the library to your ViewController scene. Set its class in the identity inspector.
2. Use control-drag to add three outlets to the ViewController class: the `playButton` bar button item, the `pauseButton` bar button item, and a `player` that points to the AudioHelper instance.
3. Control-drag from the play bar button item to your ViewController source to add a `@IBAction func play(_ sender: Any)` method. Repeat for `pause`.
4. Fill out these two methods with the following code:

```
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
```

Notice how the methods manage the interface ensuring only one button is active at a time. Actual state changes are left to the `player` model, which is responsible for fetching, playing, and controlling playback. This design shows a good division between view and model responsibilities, with the controller managing communication between the two.

Finish by testing your application on several simulator platforms and in both portrait and landscape orientations.


## Minimum Viable Product

Your finished project must include all of the following requirements:

* Your player works and is functional
* The layout is appropriate for and adapts to both horizontal and vertical presentations
* The layout works on all iOS target platforms
 
## Stretch Problems

After finishing your required elements, push your work further. These goals may or may not be things you learned in this module but they build on the material you just studied. Time allowing, stretch your limits and see if you can deliver on the following optional goals:

* Add "Now playing" information to the layout, ensuring it adapts just like other design elements.
* Create a playlist of several items (you can source them from free feeds from Archive.org's public domain music) and add in "Next Track" and "Previous Track" functionality. You can source icons from [Icons8](https://icons8.com/ios) or the [Noun Project](https://thenounproject.com). Be sure to include attribution in your project if required by the license.