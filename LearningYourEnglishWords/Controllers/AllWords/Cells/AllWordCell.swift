//
//  AllWordCell.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 21.05.2020.
//  Copyright © 2020 Aleksandr Lutenko. All rights reserved.
//

import UIKit

class AllWordCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    
    func gonfigCell(_ word: Word) {
        
        self.titleLabel.text = word.englishName
    }
}
