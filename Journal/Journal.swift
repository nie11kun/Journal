//
//  Journal.swift
//  Journal
//
//  Created by Marco Nie on 20/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import Foundation

class Journal {
    
    private var entries: [JournalEntry]
    
    var count: Int {
        return entries.count
    }
    
    init(entries: [JournalEntry]) {
        self.entries = entries
    }
    
    func addEntry(entry: JournalEntry) {
        entries.append(entry)
    }
    
    func entry(index: Int) -> JournalEntry? {
        if index >= 0 && index < entries.count {
        return entries[index]
        } else {
            return nil
        }
    }
    
}
