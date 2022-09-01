//
//  MainTabBarController.swift
//  PersonsListApp
//
//  Created by Антон Заричный on 01.09.2022.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    var personList = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()

        dataTransfer()
    }
    
    private func dataTransfer() {
        guard let firstNavigationVC = viewControllers?.first as? UINavigationController else { return }
        guard let secondNavigationVC = viewControllers?.last as? UINavigationController else { return }
        
        guard let firstTableVC = firstNavigationVC.topViewController as? FirstTableViewController else { return }
        guard let secondTableVC = secondNavigationVC.topViewController as? SecondTableViewController else { return }
        
        firstTableVC.personList = personList
        secondTableVC.personList = personList
    }
}
