//
//  EmojiTableViewController.swift
//  ScrollViews
//
//  Created by Aniket Singla on 18/08/25.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell") ??
        
                   UITableViewCell(style: .default, reuseIdentifier: "EmojiCell")

        let item = emoji[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text = "\(item.symbol) - \(item.name)"
        content.secondaryText = item.description
        cell.contentConfiguration = content
        
        cell.accessoryType = .checkmark
        return cell
    }
}
