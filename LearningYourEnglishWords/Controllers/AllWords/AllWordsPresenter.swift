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
    func addWord()
}

class AllWordsPresenter: NSObject {
    // MARK: - Public variables
    internal weak var view: AllWordsViewProtocol?

    // MARK: - Private variables
    private let router: AllWordsRouterProtocol
    private var listOfWord: Array<Word> = []
    
    // MARK: - Initialization
    init(router: AllWordsRouterProtocol, view: AllWordsViewProtocol) {

        self.router = router
        self.view = view
    }

}

extension AllWordsPresenter: AllWordsPresenterProtocol {
    
    func addWord() {
        router.openAddWordVC()
    }
    
    func viewDidLoad() {
    }
}

extension AllWordsPresenter: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfWord.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AllWordCell" , for: indexPath) as? AllWordCell else {
            fatalErrorOnCreate(R.reuseIdentifier.allWordCell.identifier)
        }
        cell.gonfigCell(listOfWord[indexPath.row])
        return cell
    }
}

extension AllWordsPresenter: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        router.openWordVC()
    }
}
