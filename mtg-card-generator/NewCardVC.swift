//
//  NewCardVC.swift
//  mtg-card-generator
//
//  Created by Adrian Padua on 5/16/16.
//  Copyright © 2016 Adrian Padua. All rights reserved.
//

import UIKit
import CoreData

class NewCardVC: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var cardNamePreview: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.addTarget(self, action: #selector(NewCardVC.textFieldDidChange(_:)), forControlEvents: UIControlEvents.EditingChanged)
        
    }

    func textFieldDidChange(textField: UITextField) {
        cardNamePreview.text = textField.text
    }
    
    // SAVE CoreData
    @IBAction func createCardBtnPressed(sender: UIButton) {
        
        if let cardName = nameTextField.text where nameTextField.text != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Card", inManagedObjectContext: context)
            let card = Card(entity: entity!, insertIntoManagedObjectContext: context)
            
            card.name = cardName
            print("\(cardName)")

            context.insertObject(card)
            
            do {
                try context.save()
            } catch {
                print("could not save")
            }
            self.navigationController?.popViewControllerAnimated(true)
        }
        
    }
}
