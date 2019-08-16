//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by omrobbie on 16/08/19.
//  Copyright © 2019 omrobbie. All rights reserved.
//

import UIKit

class NewsListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
         navigationController?.navigationBar.prefersLargeTitles = true

        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=51660c958ad44aeda334a7c53a2e4278")!

        WebService().getArticles(url: url) { _ in
            
        }
    }
}
