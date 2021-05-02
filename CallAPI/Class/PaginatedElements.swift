//
//  PaginatedElements.swift
//  CallAPI
//
//  Created by Quentin Genevois on 24/02/2021.
//

import Foundation

/*
 {
 "info": {
      // …
 },
 "results": [
        // …
     ]
 }
 */

struct PaginatedElements<Element: Decodable> {
    let information: PaginatinInformation
    let decodedElements: [Element]
}

extension PaginatedElements: Decodable {
    enum CodingKeys: String, CodingKey {
        case information = "info"
        case decodedElements = "results"
    }
}

