//
//  Extensions.swift
//  TodoList
//
//  Created by Sree Lakshman on 19/11/24.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String: Any] {
        // Attempt to encode the object
        guard let data = try? JSONEncoder().encode(self) else {
            print("Failed to encode the object.")
            return [:]
        }
        // Attempt to decode the data into a dictionary
        guard let dictionary = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
            print("Failed to convert data to dictionary.")
            return [:]
        }
        return dictionary
    }
}
