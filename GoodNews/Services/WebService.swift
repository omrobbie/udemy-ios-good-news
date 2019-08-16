//
//  WebService.swift
//  GoodNews
//
//  Created by omrobbie on 16/08/19.
//  Copyright © 2019 omrobbie. All rights reserved.
//

import Foundation

class WebService {

    func getArticles(url: URL, completion: @escaping ([Any]?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }

            if let data = data {
                print(data)
            }
        }.resume()
    }
}
