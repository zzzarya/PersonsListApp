//
//  MoreInfoViewController.swift
//  PersonsListApp
//
//  Created by Антон Заричный on 30.08.2022.
//

import UIKit

final class MoreInfoViewController: UIViewController {
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(person.name) \(person.surname)"
        phoneLabel.text = person.number
        emailLabel.text = person.email
    }
}
