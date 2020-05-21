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
    func tapButton(button: UIButton)
}

class HomePresenter: NSObject {
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
    
    func tapButton(button: UIButton) {
        switch button.titleLabel?.text {
        case "Начать":
            print("Начать")
            router.openStartLearningScreen()
        case "Все слова":
            router.openWordsListScreen()
        case "Выученные слова":
            print("Выученные слова")
            router.openLernedListScreenScreen()
        default:
            return
        }
    }
}

extension HomePresenter: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
