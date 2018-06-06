//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Tom Bandini on 6/6/18.
//  Copyright © 2018 Tom Bandini. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

var emojis = ["😀", "💩", "🚗", "👬", "👅"]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row]
        
        

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "ourSegue", sender: nil)
        
    }
    

}
