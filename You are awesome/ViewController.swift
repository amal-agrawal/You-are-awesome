//
//  ViewController.swift
//  You are awesome
//
//  Created by Amal Agrawal on 9/8/19.
//  Copyright © 2019 Amal Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messagelabel: UILabel!
    
    //code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view Loaded!")
    
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You are Great!",
                        "You are Fantastic!!!",
                        "I love you",
                        "You are Fantastic",
                        "When the Genius Bar needs you, they'll call you",
                        "You brighten my day",
                        ]
        
        messagelabel.text = messages.randomElement()!
        
        
//        var index = 0
//        messagelabel.text = messages[index]
//
//        if index == messages.count - 1 {
//            index = 0
//        } else {
//            index = index + 1
//        }
        
//        let message1 = "You are Awesome!"
//        let message2 = "You are Great!"
//        let message3 = "You are Awesome!"
//
//        if messagelabel.text == message1 {
//            messagelabel.text = message2
//        } else if messagelabel.text == message2 {
//            messagelabel.text = message3
//        } else{
//            messagelabel.text = message1
//
    }
 
}

