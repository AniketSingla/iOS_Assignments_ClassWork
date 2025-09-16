//
//  BookTableViewController.swift
//  FavoriteBooks
//
//  Created by Aniket Singla on 25/08/25.
//

import UIKit

class BookTableViewController: UITableViewController {
    
    var books: [Book] = [
        Book(title: "How to kill your family", author: "Bella Mackie", genre: "Suspence", length: "314"),
        Book(title: "Mythos", author:"Stephen Fry", genre: "Historical Fiction", length: "411")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Favorite Books"
        navigationItem.leftBarButtonItem = editButtonItem

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        books.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        let book = books[indexPath.row]
        cell.textLabel?.text = book.title
        cell.detailTextLabel?.text = "\(book.author)"
        cell.accessoryType = .disclosureIndicator

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */


    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            books.remove(at:indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "EditBook" {
                guard
                    let formVC = segue.destination as? BookFormTableViewController,
                    let selected = tableView.indexPathForSelectedRow
                else { return }
                formVC.bookToEdit = books[selected.row]
                formVC.editingIndexPath = selected
            }
            // For AddBook we don't pass anything (form is empty)
        }

        // MARK: - Unwind from form (Save)
        @IBAction func unwindToBookList(_ segue: UIStoryboardSegue) {
            guard let formVC = segue.source as? BookFormTableViewController else { return }
            let newOrEdited = formVC.currentFormBook()

            if let editIndex = formVC.editingIndexPath {
                // Update existing
                books[editIndex.row] = newOrEdited
                tableView.reloadRows(at: [editIndex], with: .automatic)
            } else {
                // Append new
                books.append(newOrEdited)
                let newIndex = IndexPath(row: books.count - 1, section: 0)
                tableView.insertRows(at: [newIndex], with: .automatic)
            }
        }
    }

