//
//  SectionViewController.swift
//  PersonListApp
//
//  Created by Sergey Zakurakin on 06/05/2024.
//

import UIKit

class SectionViewController: UITableViewController {

    var persons: [Person]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
         2
    }

    // title для ячеек
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullname
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        
        // отображать в каждой отдельной ячейке
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        

        cell.contentConfiguration = content
        return cell
    }
    
    // снимает выделение с ячеек
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - UITableDelegate
extension SectionViewController {
    // ручная кастимизация Header (настройка любого внешнего вида)
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let contentView = UIView()
        
        let fullnameLabel = UILabel(frame:
            CGRect(
                x: 26,
                y: 0,
                width: tableView.frame.width - 16,
                height: 20
            )
        )
        fullnameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        fullnameLabel.textColor = .red
        fullnameLabel.text = persons[section].fullname
        
        contentView.addSubview(fullnameLabel)
        
        return contentView
    }
}
