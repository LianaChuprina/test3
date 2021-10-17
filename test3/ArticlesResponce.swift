//
//  ArticlesResponce.swift
//  test3
//
//  Created by Лиана Чуприна on 16.10.2021.
//

import Foundation

struct ArticlesResponse: Codable {
    let results: [ArticleResponse]
}

struct ArticleResponse: Codable {
    let title: String
}
