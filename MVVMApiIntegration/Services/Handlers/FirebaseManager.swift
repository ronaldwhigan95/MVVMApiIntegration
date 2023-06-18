//
//  FirebaseManager.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 6/18/23.
//

import Foundation
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore

typealias SignInCompletion = (AuthDataResult?, Error?)->()

class FirebaseManager {
    static var shared = FirebaseManager()
    fileprivate var auth = Auth.auth()
    
    func configure() {
        FirebaseApp.configure()
    }
    
    func signInAuthentication(username: String, password: String, completion: @escaping SignInCompletion) {
        auth.signIn(withEmail: username, password: password) { result, error in
            if let error = error {
                print(error)
                completion(result,error)
            } else {
                print("Logged in")
                completion(result,error)
            }
        }
    }
    
    func signUp(username: String, password: String) {
        auth.createUser(withEmail: username, password: password)
    }
}
