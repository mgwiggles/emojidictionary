//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Mitch Guzman on 3/5/17.
//  Copyright © 2017 Mitch Guzman. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        
        if emoji == "🐹" {
            definitionLabel.text = "A cute Hamster!"
        }
        if emoji == "🐶" {
            definitionLabel.text = "A cute Puppy!"
        }
        if emoji == "🐚" {
            definitionLabel.text = "The magic Conch Shell!"
        }
        if emoji == "🐽" {
            definitionLabel.text = "A cute Alien!"
        }
        if emoji == "🐱" {
            definitionLabel.text = "A cute Kitty!"
        }
        if emoji == "🐢" {
            definitionLabel.text = "A cute Turtle!"
        }
        if emoji == "🌻" {
            definitionLabel.text = "A little Sunflower!"
        }
        if emoji == "🐡" {
            definitionLabel.text = "A cute Blowfish!"
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
