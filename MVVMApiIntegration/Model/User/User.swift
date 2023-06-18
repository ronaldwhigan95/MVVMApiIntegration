//
//  User.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 4/19/23.
//

import Foundation
struct User: Codable {
    let id: Int
    
    //Add property wrapper here
    let firstName, lastName, maidenName: String
    let age: Int
    let email, phone, username, password: String
    let birthDate: String
    let image: String

}
