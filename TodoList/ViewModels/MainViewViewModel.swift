//
//  MainViewViewModel.swift
//  TodoList
//
//  Created by Sree Lakshman on 19/11/24.
//

import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            if let user = user {
                DispatchQueue.main.async {
                    self?.currentUserId = user.uid
                }
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
