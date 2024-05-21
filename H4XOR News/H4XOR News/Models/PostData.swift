//
//  PostData.swift
//  H4XOR News
//
//  Created by Guo-Feng Luo on 2024/5/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
