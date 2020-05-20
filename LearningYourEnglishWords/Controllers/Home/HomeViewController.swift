//
//  HomeViewController.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 19.05.2020.
//  Copyright (c) 2020 Aleksandr Lutenko. All rights reserved.
//

import UIKit

protocol HomeViewProtocol: class {
    func reloadTableView()
}

class HomeViewController: UIViewController {
    
    // MARK: - Public properties
    var presenter: HomePresenterProtocol?
    var configurator: HomeConfiguratorProtocol?
    
    // MARK: - Private properties
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurator?.config(viewController: self)
        presenter?.viewDidLoad()
        tableViewConfig()
    }
    
    // MARK: - Display logic
    
    // MARK: - Actions
    
    // MARK: - Overrides
    
    // MARK: - Private functions
    private func tableViewConfig() {
        tableView.dataSource = presenter as? UITableViewDataSource
        tableView.delegate = presenter as? UITableViewDelegate
        tableView.tableFooterView = UIView(frame: .zero)
        centerTableContentsIfNeeded()
        
    }

     private func centerTableContentsIfNeeded() {
        let totalHeight = tableView.bounds.height
        guard let tableViewContentCell = presenter?.numberOfCell() else {
            return
        }
        let contentHeight = CGFloat(56 * tableViewContentCell)
        let contentCanBeCentered = contentHeight < totalHeight
        if (contentCanBeCentered) {
            tableView.contentInset = UIEdgeInsets(top: totalHeight/2 - contentHeight/2, left: 0, bottom: 0, right: 0)
        } else {
            tableView.contentInset = UIEdgeInsets.zero
        }
    }
}

extension HomeViewController: HomeViewProtocol {
    
    func reloadTableView() {
        tableView.reloadData()
    }
}
