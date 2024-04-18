//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Sampson Ezieme on 2/12/24.
//

import UIKit
import SafariServices

// to make the GFAlert be the same on all view controllers
extension UIViewController {
    
    func presentGFAlert(title: String, message: String, buttonTitle: String) {
        let alertVC = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
        alertVC.modalPresentationStyle  = .overFullScreen
        alertVC.modalTransitionStyle    = .crossDissolve
        self.present(alertVC, animated: true)
    }
    
    
    func presentDefaultError() {
        let alertVC = GFAlertViewController(title: "Something Went Wrong",
                                            message: "We were unable to complete your task at this time. Please try again.",
                                            buttonTitle: "Ok")
        alertVC.modalPresentationStyle  = .overFullScreen
        alertVC.modalTransitionStyle    = .crossDissolve
        self.present(alertVC, animated: true)
    }
    
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
