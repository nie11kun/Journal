//
//  JournalTableViewController.swift
//  Journal
//
//  Created by Marco Nie on 20/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import UIKit

class JournalTableViewController: UITableViewController {

    let cellReuseIndentifer = "JournalEntryCell"
    
    let journalEntrySegueInditifiter = "JournalEntry"
    let newJournalEntrySegueInditifier = "NewJournalEntry"
    
    let journal = Journal(entries: (0...3).map {
        JournalEntry(date: Date(), contents: "contents for entry \($0)")
    })
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
            return journal.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIndentifer, for: indexPath)

        // Configure the cell...
        if let label = cell.textLabel,
            let entry = journal.entry(index: indexPath.row) {
                label.text = "\(entry)"
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == journalEntrySegueInditifiter {
            if let journalEntryViewController = segue.destination as? JournalEntryViewController,
                let cell = sender as? UITableViewCell,
                let index = self.tableView.indexPath(for: cell),
                let entry = journal.entry(index: index.row) {
                journalEntryViewController.journalEntry = entry
            }
        } else if segue.identifier == newJournalEntrySegueInditifier {
            if let newJournalEntryViewController = segue.destination as? NewJournalEntryViewController {
                newJournalEntryViewController.journal = journal
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
}
