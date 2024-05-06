//
//  ContactListViewController.swift
//  PersonListApp
//
//  Created by Sergey Zakurakin on 05/05/2024.
//

import UIKit

final class ContactListViewController: UITableViewController {

    var persons: [Person]!
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let detailsVC = segue.destination as? DetailsViewController
        detailsVC?.person = persons[indexPath.row]
    }
}

// MARK: - UITableViewControllerDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
  
        cell.contentConfiguration = content

        return cell
    }
}
// MARK: - UITableViewControllerDelegate
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {

        let movedAnswer = persons.remove(at: sourceIndexPath.row)
            
        persons.insert(movedAnswer, at: destinationIndexPath.row)
            
            // Обновляем таблицу, чтобы отразить изменения
            tableView.reloadData()
        
    }
}

