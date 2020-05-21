//
//  AllWordsRouter.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 20.05.2020.
//  Copyright (c) 2020 Aleksandr Lutenko. All rights reserved.
//

import UIKit

protocol AllWordsRouterProtocol: class {
    var view: AllWordsViewController? { get set }
    func openAddWordVC()
    func openWordVC()
}

class AllWordsRouter {
    // MARK: - Public variables
    internal weak var view: AllWordsViewController?
    
    // MARK: - Initialization
    init(view: AllWordsViewController) {
        self.view = view
    }

}

extension AllWordsRouter: AllWordsRouterProtocol {
    
    func openAddWordVC() {
        print("Add Word")
    }
    
    func openWordVC() {
        print("Word")
    }
}
