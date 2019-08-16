//
//  Article.swift
//  GoodNews
//
//  Created by omrobbie on 16/08/19.
//  Copyright © 2019 omrobbie. All rights reserved.
//

import Foundation

struct Article: Decodable {
    let title: String
    let description: String
}

struct ArticleList: Decodable {
    let articles: [Article]
}
