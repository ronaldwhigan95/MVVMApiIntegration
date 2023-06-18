//
//  Navigation.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 6/17/23.
//

import Foundation
import UIKit

class Navigation {
    static var shared = Navigation()
    
    func pushToNewRootWithXib(from vc: UIViewController, to: UIViewController, isAnimated: Bool = true) {
        let newVC = HomeViewController(nibName: "HomeViewController", bundle: nil) as HomeViewController
        vc.navigationController?.pushViewController(newVC, animated: isAnimated)
        to.navigationController?.isNavigationBarHidden = true
    }
}
