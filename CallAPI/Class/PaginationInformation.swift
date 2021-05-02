//
//  PaginationInformation.swift
//  CallAPI
//
//  Created by Quentin Genevois on 24/02/2021.
//

import Foundation

struct PaginatinInformation {
    let count: Int
    let pages: Int
    let nextURL: URL?
    let previousURL: URL?
}

/*
 {
     "count": 671,
     "pages": 34,
     "next": "https://rickandmortyapi.com/api/character?page=2",
     "prev": null
 }
 */
extension PaginatinInformation: Decodable {
    enum CodingKeys: String, CodingKey {
        case count
        case pages
        case nextURL = "next"
        case previousURL = "prev"
    }
}
