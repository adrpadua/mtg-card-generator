//
//  ViewController.swift
//  mtg-card-generator
//
//  Created by Adrian Padua on 5/16/16.
//  Copyright © 2016 Adrian Padua. All rights reserved.
//

import UIKit

class CardListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var cards = [Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("CardCell") as? CardCell
        {
            // grab card at certain indexPath
            let card = cards[indexPath.row]
            cell.configureCell(card)
            
            return cell
        } else {
            return CardCell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
}

