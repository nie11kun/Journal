//
//  JournalEntry.swift
//  Journal
//
//  Created by Marco Nie on 20/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import Foundation

class JournalEntry: CustomStringConvertible {
    
    let date: Date
    let contents: String
    let dateFormater = DateFormatter()
    
    var description: String {
        dateFormater.dateStyle = .full
        dateFormater.dateFormat = "yyyy'-'MM'-'dd' 'hh':'mm':'ss"
        return dateFormater.string(from: date)
    }
    
    init(date: Date, contents: String) {
        self.date = date
        self.contents = contents
        
    }
}
