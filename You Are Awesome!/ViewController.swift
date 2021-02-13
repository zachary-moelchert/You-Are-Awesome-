//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Zachary Moelchert on 1/31/21.

// Weeks 1-2

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 6
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription)could not initialize AVAudioPlayer object")
            }
        } else {
            print("ERROR: could not read data from file sound0")
        }
    }
    
    
    func nonRepeatingRandom (originalNumber: Int, upperBounds: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperBounds-1)
        } while newNumber == originalNumber
        return newNumber
    }
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        var messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fabulous!",
                        "Fabulous? That's You!",
                        "When The Genius Bar Needs Help, They Call You!",
                        "You Da Bomb!",
                        "You've Got The Design Skills of Jony Ive"]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count)
        messageLabel.text = messages[messageNumber]
        
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages)
        imageView.image = UIImage.init(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberOfSounds)
        playSound(name: "sound\(soundNumber)")
        

        
        
    }
    
    
}

// through 2.16


