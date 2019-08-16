//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by omrobbie on 16/08/19.
//  Copyright © 2019 omrobbie. All rights reserved.
//

import Foundation

struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return article.title
    }

    var description: String {
        return article.description
    }
}

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numberOfSection: Int {
        return 1
    }

    func numberOfRowsInSection(_ section: Int) -> Int {
        return articles.count
    }

    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = articles[index]
        return ArticleViewModel(article)
    }
}
