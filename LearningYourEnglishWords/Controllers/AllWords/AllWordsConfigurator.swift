//
//  AllWordsConfigurator.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 20.05.2020.
//  Copyright (c) 2020 Aleksandr Lutenko. All rights reserved.
//

import UIKit

protocol AllWordsConfiguratorProtocol: class {
    func makeViewController() -> AllWordsViewController
    func config(viewController: AllWordsViewController)
}

class AllWordsConfigurator {
    let storyboard = R.storyboard.allWords
}

extension AllWordsConfigurator: AllWordsConfiguratorProtocol {
    func makeViewController() -> AllWordsViewController {

        guard let viewController = storyboard.allWordsViewController() else {
            fatalErrorOnCreate(storyboard.allWordsViewController.identifier)
        }
        viewController.configurator = self

        return viewController
    }

    func config(viewController: AllWordsViewController) {

        let router = AllWordsRouter(view: viewController)
        let presenter = AllWordsPresenter(router: router, view: viewController)
        viewController.presenter = presenter
    }

}
