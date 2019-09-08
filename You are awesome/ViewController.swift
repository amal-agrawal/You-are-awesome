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
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        messagelabel.text = "You are Awesome!"
        messagelabel.textColor = UIColor.red
        print("The button was pressed")
    }
    @IBAction func AnotherMessagePressed(_ sender: UIButton) {
        messagelabel.text="You are Great!"
        messagelabel.textColor = UIColor.blue
    }
    
}

