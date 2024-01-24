//
//  DataModel.swift
//  DemoPlist
//
//  Created by Milu Ann George on 15/01/24.
//

import Foundation

struct Person: Codable {
    let name: String
    let age: Int

    private enum CodingKeys: String, CodingKey {
        case name = "Name"
        case age = "Age"
    }
}

