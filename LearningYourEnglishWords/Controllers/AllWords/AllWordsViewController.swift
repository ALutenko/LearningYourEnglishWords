//
//  AllWordsViewController.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 20.05.2020.
//  Copyright (c) 2020 Aleksandr Lutenko. All rights reserved.
//

import UIKit

protocol AllWordsViewProtocol: class {
}

class AllWordsViewController: UIViewController {
    // MARK: - Public properties
    var presenter: AllWordsPresenterProtocol?
    var configurator: AllWordsConfiguratorProtocol?
    
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
    @IBAction func addWord(sender: UIBarButtonItem) {
        presenter?.addWord()
    }
    
    // MARK: - Overrides
    
    // MARK: - Private functions
    private func tableViewConfig() {
        tableView.dataSource = presenter as? UITableViewDataSource
        tableView.delegate = presenter as? UITableViewDelegate
        tableView.tableFooterView = UIView(frame: .zero)
    }
}

extension AllWordsViewController: AllWordsViewProtocol {
    
    func reloadTableView() {
        tableView.reloadData()
    }
}
