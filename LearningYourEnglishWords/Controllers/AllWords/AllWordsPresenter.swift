//
//  AllWordsPresenter.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 20.05.2020.
//  Copyright (c) 2020 Aleksandr Lutenko. All rights reserved.
//

import UIKit

protocol AllWordsPresenterProtocol: class {
    var view: AllWordsViewProtocol? { get set }
    func viewDidLoad()
}

class AllWordsPresenter: NSObject {
    // MARK: - Public variables
    internal weak var view: AllWordsViewProtocol?

    // MARK: - Private variables
    private let router: AllWordsRouterProtocol
    
    // MARK: - Initialization
    init(router: AllWordsRouterProtocol, view: AllWordsViewProtocol) {

        self.router = router
        self.view = view
    }

}

extension AllWordsPresenter: AllWordsPresenterProtocol {
    
    func viewDidLoad() {
    }
}

extension AllWordsPresenter: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell" , for: indexPath) as? HomeCell else {
//            fatalErrorOnCreate(R.reuseIdentifier.homeCell.identifier)
//        }
//        cell.gonfigCell(ListOfButtons[indexPath.row])
//        return cell
        return UITableViewCell()
    }
}

extension AllWordsPresenter: UITableViewDelegate {
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        switch indexPath.row {
//        case 0:
//            router.openStartLearningScreen()
//        case 1:
//            router.openWordsListScreen()
//        case 2:
//            router.openLernedListScreenScreen()
//        default:
//            return
//        }
//    }
}
