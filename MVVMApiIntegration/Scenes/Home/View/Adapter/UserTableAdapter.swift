//
//  UserTableAdapter.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 4/19/23.
//

import UIKit

class UserTableAdapter: NSObject ,UITableViewDelegate, UITableViewDataSource {
    
    init(vc: any ViewControllerProtocol, vm: ViewModel) {
        self.vc = vc
        self.vm = vm
    }
    
    var vc:any ViewControllerProtocol
    var vm: ViewModel
    
    var delegate: UserTableProtocol?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.getRowCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as? HomeTableViewCell else { return UITableViewCell()}
        cell.userName.text = vm.getUserList()[indexPath.row].lastName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Do something")
    }
    
}

protocol UserTableProtocol {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
}
