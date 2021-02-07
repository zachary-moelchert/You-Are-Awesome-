//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Zachary Moelchert on 1/31/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
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
        
        // Using a counter to cycle through messages
        //        messageLabel.text = messages[messageNumber]
        //        messageNumber += 1
        //        if messageNumber == messages.count {
        //            messageNumber = 0
        
        // Getting a random message and image using .random
       
        messageLabel.text = messages[Int.random(in: 0...messages.count - 1)]
        let imageName = "image\(Int.random(in: 0...totalNumberOfImages))"
            imageView.image = UIImage(named: imageName)
        
    
    // Using If statements to cycle through images
    //        print(imageNumber)
    //        // let imageName = "image" + String(imageNumber)
    //        let imageName = "image\(imageNumber)"
    //        imageView.image = UIImage(named: imageName)
    //        imageNumber = imageNumber + 1
    //        if imageNumber == 10 {
    //        imageNumber = 0
    //
    
    
}

// imageView.image = UIImage(named: "image")

//        let awesomeMessage = "You Are Awesome!"
//        let greatMessage = "You Are Great!"
//        let bombMessage = "You Are Da Bomb!"
//
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//        } else if messageLabel.text == greatMessage {
//            messageLabel.text = bombMessage
//            imageView.image = UIImage(named: "image2")
//        } else  {
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image0")
//
//        }

}


