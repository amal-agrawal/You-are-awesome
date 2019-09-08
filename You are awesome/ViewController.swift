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
        if messagelabel.text == "You are Awesome" {
            messagelabel.text = "You are Great!"
        } else if messagelabel.text == "You are Great!" {
            messagelabel.text = "You are Amazing!"
        } else{
            messagelabel.text = "You are Awesome"
  
    }
 
}
}
