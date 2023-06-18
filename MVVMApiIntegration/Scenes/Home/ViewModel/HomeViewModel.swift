//
//  HomeViewModel.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 4/19/23.
//

import Foundation

class HomeViewModel : ViewModel {
    static var vm: Self {
        return HomeViewModel() as! Self
    }
    
    let webHandler = WebHandler()
    
    private var users: Users?
    var error: Error?
    
    func getUserList() -> [User] {
        guard let users = users?.users else { return [User(id: 1, firstName: "", lastName: "", maidenName: "", age: 1, gender: .male, email: "", phone: "", username: "", password: "", birthDate: "", image: "", bloodGroup: "", height: 2, weight: 2, eyeColor: .amber, hair: Hair(color: .auburn, type: .curly), domain: "", ip: "", address: Address(address: "", city: "", coordinates: Coordinates(lat: 0, lng: 0), postalCode: "", state: ""), macAddress: "", university: "", bank: Bank(cardExpire: "", cardNumber: "", cardType: "", currency: "", iban: ""), company: Company(address: Address(address: "", city: "", coordinates: Coordinates(lat: 1, lng: 1), postalCode: "", state: ""), department: "", name: "", title: ""), ein: "", ssn: "", userAgent: "")]}
        return users
    }
    
    func getRowCount() -> Int {
        guard let users = users?.users else { return 0}
        
        return users.count
    }
    
    
    func getUsers(completion: @escaping ()->()) {
        webHandler.get(url: ApiConstants.Endpoints.users.url, model: Users.self) { result in
            switch result {
            case .success(let value):
                    print(value)
                    self.users = value as? Users
                    completion()
               
            
            case .failure(let value):
                self.error = value
            }
        }
    }
}
