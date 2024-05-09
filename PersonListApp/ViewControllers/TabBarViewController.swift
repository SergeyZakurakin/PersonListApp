//
//  TabBarViewController.swift
//  PersonListApp
//
//  Created by Sergey Zakurakin on 06/05/2024.
//

import UIKit

class TabBarViewController: UITabBarController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
    
    }
    

    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else {return}
        guard let sectionVC = viewControllers?.last as? SectionViewController else {return}
        
        
        // с помощу перебора вызвать нужный viewController из tabBar
//        viewControllers?.forEach{ viewController in
//            if let contactListVC = viewController as? ContactListViewController {
//                contactListVC.persons = persons
//            } else if let sectionVC = viewController as? SectionViewController {
//                sectionVC.persons = persons
//            }
        //}
        
        
        let persons = Person.getContactList()
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
    
    
}
