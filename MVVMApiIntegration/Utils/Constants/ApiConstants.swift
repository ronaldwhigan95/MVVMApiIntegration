//
//  ApiConstants.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 4/19/23.
//

import Foundation

class ApiConstants {
    static let baseUrl = "https://dummyjson.com"
    
    enum Endpoints: String {
        case posts
        case users
        
        var url: String {
            switch self {
            case .users:
                return "\(ApiConstants.baseUrl)/users"
            case .posts:
                return "\(ApiConstants.baseUrl)/posts"
            }
        }
    }
}
