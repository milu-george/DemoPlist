//
//  DataViewModel.swift
//  DemoPlist
//
//  Created by Milu Ann George on 15/01/24.
//

// DataViewModel.swift
import Foundation

class DataViewModel {
    var items: [Person] = []

    init() {
        loadItems()
    }

    private func loadItems() {
        if let path = Bundle.main.path(forResource: "Data", ofType: "plist"),
           let array = NSArray(contentsOfFile: path) as? [[String: Any]] {
            items = array.compactMap { dict in
                guard let name = dict["Name"] as? String, let age = dict["Age"] as? Int else {
                    return nil
                }
                return Person(name: name, age: age)
            }
        }
    }
}
