//
//  PersonListViewController.swift
//  PersonListApp
//
//  Created by Sergey Zakurakin on 05/05/2024.
//

import UIKit

final class PersonListViewController: UITableViewController {

    let personsList = Person.personData()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let detailsVC = segue.destination as? DetailsViewController
        detailsVC?.person = personsList[indexPath.row]
    }

}

// MARK: - UITableViewDataSource
extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
  
        cell.contentConfiguration = content

        return cell
    }
}



