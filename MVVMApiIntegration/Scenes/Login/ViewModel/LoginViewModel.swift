//
//  File.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 6/17/23.
//

import Foundation
import Firebase

class LoginViewModel: ViewModel {
    func getUserList() -> [User] {
        //Refactor, refer to SwiftUIImplementation
       return [User(id: 0, firstName: "", lastName: "", maidenName: "", age: 0, email: "", phone: "", username: "", password: "", birthDate: "", image: "")]
    }
    
    func getRowCount() -> Int {
        //Refactor, refer to SwiftUIImplementation
        return 0
    }
    
    func login(username: String, password: String, completion: @escaping SignInCompletion) {
        Auth.auth().signIn(withEmail: username, password: password) { result, error in
            if let error = error {
                print(error)
                completion(result, error)
            } else {
                print("Logged in")
                completion(result, error)
            }
        }
    }
    
    func navigateToDashboard() {
    }
}
