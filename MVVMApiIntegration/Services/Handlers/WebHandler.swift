//
//  WebHandler.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 4/19/23.
//

import Foundation

class WebHandler {
    fileprivate let apiHandler = ApiHandler()
    
    func get<T:Codable>(url: String, model: T.Type,completionBlock: CompletionHandler<Any>) {
        let headers = [String : String]()
        
        apiHandler.sendRequest(url: url, method: .get, headers: headers, model: model, completionBlock: completionBlock)
    }
    
    func put<T:Codable>(url: String, model: T.Type,completionBlock: CompletionHandler<Any>) {
        let headers = [String : String]()
        
        apiHandler.sendRequest(url: url, method: .put, headers: headers, model: model, completionBlock: completionBlock)
    }
    
    func post<T:Codable>(url: String, model: T.Type,completionBlock: CompletionHandler<Any>) {
        let headers = [String : String]()
        
        apiHandler.sendRequest(url: url, method: .post, headers: headers, model: model, completionBlock: completionBlock)
    }
    
    func delete<T:Codable>(url: String, model: T.Type,completionBlock: CompletionHandler<Any>) {
        let headers = [String : String]()
        
        apiHandler.sendRequest(url: url, method: .delete, headers: headers, model: model, completionBlock: completionBlock)
    }
}
