//
//  HomeRouter.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 19.05.2020.
//  Copyright (c) 2020 Aleksandr Lutenko. All rights reserved.
//

import UIKit

protocol HomeRouterProtocol: class {
    var view: HomeViewController? { get set }
    func openStartLearningScreen()
    func openWordsListScreen()
    func openLernedListScreenScreen()
}

class HomeRouter {
    // MARK: - Public variables
    internal weak var view: HomeViewController?
    
    // MARK: - Initialization
    init(view: HomeViewController) {
        self.view = view
    }

}

extension HomeRouter: HomeRouterProtocol {
    func openStartLearningScreen() {
    }
    
    func openWordsListScreen() {
    }
    
    func openLernedListScreenScreen() {
    }

}
