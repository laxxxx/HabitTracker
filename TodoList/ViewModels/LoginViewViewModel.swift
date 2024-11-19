//
//  LoginViewViewModel.swift
//  TodoList
//
//  Created by Sree Lakshman on 19/11/24.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init () {}
    
}
