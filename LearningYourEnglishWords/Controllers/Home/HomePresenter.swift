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
    func numberOfCell() -> Int
}

class HomePresenter: NSObject {
    // MARK: - Public variables
    internal weak var view: HomeViewProtocol?

    // MARK: - Private variables
    private let router: HomeRouterProtocol
    private let ListOfButtons: Array<String> = ["Начать", "Все слова", "Выученные слова"]
    
    // MARK: - Initialization
    init(router: HomeRouterProtocol, view: HomeViewProtocol) {

        self.router = router
        self.view = view
    }

}

extension HomePresenter: HomePresenterProtocol {
    func viewDidLoad() {
        view?.reloadTableView()
    }
    
    func numberOfCell() -> Int {
        return ListOfButtons.count
    }
}

extension HomePresenter: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ListOfButtons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell" , for: indexPath) as? HomeCell else {
            fatalErrorOnCreate(R.reuseIdentifier.homeCell.identifier)
        }
        cell.gonfigCell(ListOfButtons[indexPath.row])
        return cell
    }
}

extension HomePresenter: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            router.openStartLearningScreen()
        case 1:
            router.openWordsListScreen()
        case 2:
            router.openLernedListScreenScreen()
        default:
            return
        }
    }
}
