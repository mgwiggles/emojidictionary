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
    var emojis = ["🐶","🐱","🐹","🐽","🐢","🐚","🌻","🐡"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        where tableview looks to find what it should put inside the tableview
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        returns the number of emojis in the emojis array
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
//        using the indexPath.row allows us to get the emoji at each location in the emoji array
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

