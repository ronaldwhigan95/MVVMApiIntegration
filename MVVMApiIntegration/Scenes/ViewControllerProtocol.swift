//
//  ViewController.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 4/19/23.
//

import Foundation

protocol ViewControllerProtocol {
    associatedtype ViewModelType: ViewModel
    var vm: ViewModelType { get }
}
