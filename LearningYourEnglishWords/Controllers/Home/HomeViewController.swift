//
//  HomeViewController.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 19.05.2020.
//  Copyright (c) 2020 Aleksandr Lutenko. All rights reserved.
//

import UIKit

protocol HomeViewProtocol: class {
}

class HomeViewController: UIViewController {
    
    // MARK: - Public properties
    var presenter: HomePresenterProtocol?
    var configurator: HomeConfiguratorProtocol?
    
    // MARK: - Private properties
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurator?.config(viewController: self)
        presenter?.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        nvIsHidden(hide: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        nvIsHidden(hide: false)
    }
    
    // MARK: - Display logic
    
    // MARK: - Actions
    @IBAction func tapButton(button: UIButton) {
        presenter?.tapButton(button: button)
    }
    
    // MARK: - Overrides
    
    // MARK: - Private functions
    private func nvIsHidden(hide: Bool) {
        if hide {
            self.navigationController?.isNavigationBarHidden = true
        } else {
            self.navigationController?.isNavigationBarHidden = false
        }
    }
}

extension HomeViewController: HomeViewProtocol {
}
