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
    
    func pushToNewRoot(from vc: UIViewController, to: UIViewController, isAnimated: Bool = true) {
        vc.navigationController?.pushViewController(to, animated: isAnimated)
        to.navigationController?.isNavigationBarHidden = true
    }
}
