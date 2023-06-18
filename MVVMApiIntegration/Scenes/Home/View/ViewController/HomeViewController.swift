//
//  ViewController.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 4/19/23.
//

import UIKit

class HomeViewController: UIViewController, ViewControllerProtocol, UserTableProtocol {
    
    var vm: HomeViewModel = HomeViewModel()
    var adapter: UserTableAdapter?
    var test: String = ""
    
    @IBOutlet weak var userTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTable.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
        adapter = UserTableAdapter(vc: self, vm: vm)
        userTable.delegate = adapter
        userTable.dataSource = adapter
        
        
        adapter?.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        vm.getUsers(completion: {
            DispatchQueue.main.async {
                self.userTable.reloadData()
            }
        })
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        adapter?.delegate?.tableView(tableView, didSelectRowAt: indexPath)
    
    }

}
