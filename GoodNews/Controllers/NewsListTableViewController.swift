//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by omrobbie on 16/08/19.
//  Copyright © 2019 omrobbie. All rights reserved.
//

import UIKit

class NewsListTableViewController: UITableViewController {

    private var articleListViewModel: ArticleListViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
         navigationController?.navigationBar.prefersLargeTitles = true

        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=51660c958ad44aeda334a7c53a2e4278")!

        WebService().getArticles(url: url) { articles in
            if let articles = articles {
                self.articleListViewModel = ArticleListViewModel(articles: articles)

                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return articleListViewModel == nil ? 0 : articleListViewModel.numberOfSection
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articleListViewModel.numberOfRowsInSection(section)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else {
            fatalError("ArticleTableViewCell not found!")
        }

        let item = articleListViewModel.articleAtIndex(indexPath.row)

        cell.titleLabel.text = item.title
        cell.descriptionLabel.text = item.description

        return cell
    }
}
