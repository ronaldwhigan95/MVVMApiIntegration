//
//  ApiHandler2.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 4/19/23.
//

import Foundation

typealias CompletionHandler<T> = ((Result<T, Error>) -> ())?

class ApiHandler {
    
    func sendRequest<T: Codable>(url: String, method: HTTPMethod, headers: [String:String]?, model: T.Type, completionBlock: CompletionHandler<Any>) {
        guard let urlRequest = URL(string: url) else { return }
        var request = URLRequest(url: urlRequest)
        let defaultHeaders = [
            "Content-Type": "application/json",
            "Accept": "application/json",
        ]
        
        defaultHeaders.forEach { key, value in request.setValue(value, forHTTPHeaderField: key) }
        headers?.forEach { key, value in request.setValue(value, forHTTPHeaderField: key) }
        
        request.httpMethod = method.rawValue
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let httpResponse = response as? HTTPURLResponse {
                if httpResponse.isSuccessStatusCode() {
                    do {
                        //Made change here from [T].self to T.self
                        let someData = try JSONDecoder().decode(T.self, from: data!)
                        completionBlock!(.success(someData))
                    } catch {
                        completionBlock!(.failure(error))
                    }
                } else {
                    completionBlock!(.failure(error!))
                }
            }
        }
        task.resume()
    }
}

extension HTTPURLResponse {
    func isSuccessStatusCode() -> Bool {
        statusCode >= 200 && statusCode < 300
    }
}
