//
//  SecondTableViewController.swift
//  PersonsListApp
//
//  Created by Антон Заричный on 30.08.2022.
//

import UIKit

final class SecondTableViewController: UITableViewController {
    
    var personList: [Person]!
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = personList[section]
        return "\(person.name) \(person.surname)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondPerson", for: indexPath)
        
        let person = personList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
            case 0: content.text = person.number
            default: content.text = person.email
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
