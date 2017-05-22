//
//  JournalEntryViewController.swift
//  Journal
//
//  Created by Marco Nie on 22/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import UIKit

class JournalEntryViewController: UIViewController {
    
    @IBOutlet weak var journalEntryContents: UITextView!
    
    var journalEntry: JournalEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let journalEntry = journalEntry {
            journalEntryContents.text = journalEntry.contents
            navigationItem.title = journalEntry.description
        }
    }
    
}
