//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Mitch Guzman on 3/5/17.
//  Copyright © 2017 Mitch Guzman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
//    how many things should I put inside of my tableview?
//    what should go inside of each thing?
    
    
//    Array to define tableview
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        where tableview looks to find what it should put inside the tableview
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
//        Grabs data of emojis to show at first launch in viewcontroller
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        returns the number of emojis in the emojis array
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
//        using the indexPath.row allows us to get the emoji at each location in the emoji array
//        gets data to show where emojis fall in tableview
        let emoji = emojis[indexPath.row]
//        displays emoji in cell in tableview
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    Function that defines an array of emojis, containing properties about the emojis with the emoji class
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🐶"
        emoji1.birthYear = 2010
        emoji1.category = "Animal"
        emoji1.definition = "A cute little Puppy!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🐱"
        emoji2.birthYear = 2011
        emoji2.category = "Animal"
        emoji2.definition = "A cute little Kitty!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐹"
        emoji3.birthYear = 2012
        emoji3.category = "Animal"
        emoji3.definition = "A cute little Hamster!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐽"
        emoji4.birthYear = 2013
        emoji4.category = "Animal"
        emoji4.definition = "A cute little Alien!"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐢"
        emoji5.birthYear = 1999
        emoji5.category = "Animal"
        emoji5.definition = "A cute little turtle"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐚"
        emoji6.birthYear = 1998
        emoji6.category = "Thing"
        emoji6.definition = "The magic Conch Shell!"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🌻"
        emoji7.birthYear = 1997
        emoji7.category = "Plant"
        emoji7.definition = "A cute little Sunflower!"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🐡"
        emoji8.birthYear = 1996
        emoji8.category = "Animal"
        emoji8.definition = "A cute little Blowfish!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8]
    }

}

