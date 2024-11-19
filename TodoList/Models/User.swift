//
//  User.swift
//  TodoList
//
//  Created by Sree Lakshman on 19/11/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
