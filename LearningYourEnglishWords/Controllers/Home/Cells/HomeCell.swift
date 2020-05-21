//
//  HomeCell.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 19.05.2020.
//  Copyright © 2020 Aleksandr Lutenko. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    
    func gonfigCell(_ title: String) {
        
        self.titleLabel.text = title
    }
}
