//
//  ErrorUtility.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 19.05.2020.
//  Copyright © 2020 Aleksandr Lutenko. All rights reserved.
//

import Foundation

func fatalErrorOnCreate(_ errMsg: String) -> Never {
    return fatalError("Can't create \(errMsg)")
}
