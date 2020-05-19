//
//  HomeConfigurator.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 19.05.2020.
//  Copyright (c) 2020 Aleksandr Lutenko. All rights reserved.
//

import UIKit

protocol HomeConfiguratorProtocol: class {
    func makeViewController() -> HomeViewController
    func config(viewController: HomeViewController)
}

class HomeConfigurator {
}

extension HomeConfigurator: HomeConfiguratorProtocol {
    func makeViewController() -> HomeViewController {

        let viewController = HomeViewController()
        viewController.configurator = self

        return viewController
    }

    func config(viewController: HomeViewController) {

        let router = HomeRouter(view: viewController)
        let presenter = HomePresenter(router: router, view: viewController)
        viewController.presenter = presenter
    }

}
