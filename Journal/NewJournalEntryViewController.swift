//
//  NewJournalEntryViewController.swift
//  Journal
//
//  Created by Marco Nie on 22/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import UIKit

class NewJournalEntryViewController: UIViewController {
    
    @IBOutlet weak var journalEntryContents: UITextView!
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func save(_ sender: UIBarButtonItem) {
        let entry = JournalEntry(date: Date(), contents: journalEntryContents.text)
        journal?.addEntry(entry: entry)
        dismiss(animated: true, completion: nil)
    }
    
    var journal: Journal?
    
}
