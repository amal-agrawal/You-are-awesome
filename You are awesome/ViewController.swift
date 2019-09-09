//
//  ViewController.swift
//  You are awesome
//
//  Created by Amal Agrawal on 9/8/19.
//  Copyright © 2019 Amal Agrawal. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeimage: UIImageView!
    @IBOutlet weak var messagelabel: UILabel!
    @IBOutlet weak var soundSwitch: UISwitch!
    var awesomeplayer = AVAudioPlayer()
    var index = -1
    var imageindex = -1
    var soundindex = -1
    let numberofimages = 10
    let numberofsounds = 10
    
    //code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view Loaded!")
    
    }

    func nonRepeatingRandom(lastNumber: Int , maxValue: Int) -> Int {
        var newindex : Int
        repeat{
            newindex = Int.random(in:0..<maxValue)
        }
            while lastNumber == newindex
        return newindex
    }
    
    func playsound(soundName : String, audioPlayer: inout AVAudioPlayer) {

        if let sound = NSDataAsset(name: soundName){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error: data in \(soundName) couldn't be played as a sound")
            }
        }else{
            print("The sound did not play!")
        }
    }
    
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn == false && soundindex != -1 {
            awesomeplayer.stop()
            }
        }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You are Great!",
                        "You are Fantastic!!!",
                        "I love you",
                        "You are Fabulous",
                        "When the Genius Bar needs you, they'll call you",
                        "You brighten my day",
                        "Hope you have a great day!",
                        "Thank you for being awesome!",
                        "You are a great person!"
                        ]
    
        
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messagelabel.text = messages[index]
        
        imageindex = nonRepeatingRandom(lastNumber: imageindex, maxValue: numberofimages)
        awesomeimage.image = UIImage(named: "\(imageindex)")


        if soundSwitch.isOn == true {
            soundindex = nonRepeatingRandom(lastNumber: soundindex, maxValue: numberofsounds)
            let soundName = "sound\(soundindex)"
            playsound(soundName: soundName, audioPlayer: &awesomeplayer)
        }
        
    }
 
}

