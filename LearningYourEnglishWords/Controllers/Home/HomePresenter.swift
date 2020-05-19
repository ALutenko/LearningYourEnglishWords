//
//  HomePresenter.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 19.05.2020.
//  Copyright (c) 2020 Aleksandr Lutenko. All rights reserved.
//

import UIKit

protocol HomePresenterProtocol: class {
    var view: HomeViewProtocol? { get set }
    func viewDidLoad()
}

class HomePresenter {
    // MARK: - Public variables
    internal weak var view: HomeViewProtocol?

    // MARK: - Private variables
    private let router: HomeRouterProtocol
    
    // MARK: - Initialization
    init(router: HomeRouterProtocol, view: HomeViewProtocol) {

        self.router = router
        self.view = view
    }

}

extension HomePresenter: HomePresenterProtocol {
    func viewDidLoad() {
    }
    
}
