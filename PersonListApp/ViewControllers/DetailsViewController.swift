//
//  DetailsViewController.swift
//  PersonListApp
//
//  Created by Sergey Zakurakin on 05/05/2024.
//

import UIKit

final class DetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullname
        phoneLabel.text = String(person.phoneNumber)
        emailLabel.text = person.email
        
        
        
    }
    
}
