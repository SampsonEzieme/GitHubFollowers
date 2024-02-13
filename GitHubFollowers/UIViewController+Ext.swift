//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Sampson Ezieme on 2/12/24.
//

import UIKit


// to make the GFAlert be the same on all view controllers
extension UIViewController {
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        
        // because the alert is a ui element and we change the ui on main thread
        DispatchQueue.main.async {
            let alertVC = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
