//
//  HeaderTableViewCell.swift
//  ContactsWithCustomSections
//
//  Created by Nikita Chekan on 23.10.2022.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    
    @IBAction func phoneButtonPrassed() {
        print("Calling \(nameLabel.text ?? "") \(surnameLabel.text ?? "")...")
    }
}
