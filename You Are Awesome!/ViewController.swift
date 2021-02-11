//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Zachary Moelchert on 1/31/21.

// Weeks 1-2

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        var messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fabulous!",
                        "Fabulous? That's You!",
                        "When The Genius Bar Needs Help, They Call You!",
                        "You Da Bomb!",
                        "You've Got The Design Skills of Jony Ive"]

        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count - 1)
        }  while messageNumber == newMessageNumber
        
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage.init(named: "image\(imageNumber)")
        
   
    
}


}


