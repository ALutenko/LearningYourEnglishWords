//
//  MainButton.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 20.05.2020.
//  Copyright © 2020 Aleksandr Lutenko. All rights reserved.
//

import UIKit

public class MainButton: UIButton {
    
    required public init?(coder aDecoder: NSCoder) {

        super.init(coder: aDecoder)
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor.orange
        self.tintColor = UIColor.white
        self.titleLabel?.font = UIFont(name: "MarkerFelt-Thin", size: 25)
        self.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
