//
//  ViewController.swift
//  You are awesome
//
//  Created by Amal Agrawal on 9/8/19.
//  Copyright © 2019 Amal Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeimage: UIImageView!
    @IBOutlet weak var messagelabel: UILabel!
    var index = -1
    var imageindex = -1
    let numberofimages = 10
    
    //code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view Loaded!")
    
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You are Great!",
                        "You are Fantastic!!!",
                        "I love you",
                        "You are Fabulous",
                        "When the Genius Bar needs you, they'll call you",
                        "You brighten my day",
                        ]
        
        var newindex : Int
        repeat{
            newindex = Int.random(in:0..<messages.count)
        }
        while index == newindex
        index = newindex
        messagelabel.text = messages[index]
        
        repeat {
            newindex = Int.random(in: 0..<numberofimages)
        } while imageindex == newindex
        
        imageindex = newindex
        awesomeimage.image = UIImage(named: "\(imageindex)")

    }
 
}

