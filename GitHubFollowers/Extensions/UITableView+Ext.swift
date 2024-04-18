//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by Sampson Ezieme on 4/17/24.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
