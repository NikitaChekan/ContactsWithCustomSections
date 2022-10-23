//
//  SectionTableViewController.swift
//  ContactsWithCustomSections
//
//  Created by Nikita Chekan on 23.10.2022.
//

import UIKit

class SectionTableViewController: UITableViewController {

    var contacts = Person.getContactList()

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let contact = contacts[indexPath.section]
        var content = cell.defaultContentConfiguration()
        content.text = contact.rows[indexPath.row]
        
        content.image = indexPath.row == 0
        ? UIImage(systemName: "tray")
        : UIImage(systemName: "phone")
        
        cell.contentConfiguration = content
        return cell
    }

}

//MARK: - UITableViewDelegate
extension SectionTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    // Метод возвращает UIView и с помощью его можно вернуть все что угодно (кнопку слайдер и тд)
    // Так же с помощью его можно коставмизировать UI элементы (лэйбл в этом примере)
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let fullNameLabel = UILabel(
//            frame: CGRect(
//                x: 16,
//                y: 3,
//                width: tableView.frame.width,
//                height: 20
//            )
//        )
//
//        fullNameLabel.text = contacts[section].fullName
//        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 17)
//        fullNameLabel.textColor = .white
//
//        let contentView = UIView()
//        contentView.addSubview(fullNameLabel)
//
//        return contentView
//    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell") as? HeaderTableViewCell
        
        let contact = contacts[section]
        cell?.nameLabel.text = contact.name
        cell?.surnameLabel.text = contact.surname
        
        return cell
    }
    
    //Метод для увеличения высоты секции
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        60
    }
    
    // Метод который вызывается перед тем как отобразится View для секции для Header
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        //view.backgroundColor = .gray
        
    }
}
