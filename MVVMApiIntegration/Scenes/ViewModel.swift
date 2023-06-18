//
//  ViewModel.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 4/19/23.
//

import Foundation

protocol ViewModel {
    func getUserList() -> [User]
    func getRowCount()-> Int
}
