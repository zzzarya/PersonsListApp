//
//  FirstTableViewController.swift
//  PersonsListApp
//
//  Created by Антон Заричный on 30.08.2022.
//

import UIKit

final class FirstTableViewController: UITableViewController {
    
    var personList: [Person]!
        
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstPerson", for: indexPath)
        
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name) \(person.surname)"
        
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        guard let index = tableView.indexPathForSelectedRow else { return }
        let person = personList[index.row]
        moreInfoVC.person = person
    }
}


