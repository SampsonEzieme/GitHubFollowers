//
//  FollowerListViewController.swift
//  GitHubFollowers
//
//  Created by Sampson Ezieme on 2/12/24.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        // we can put it here because this nav will be created and destroyed.
        // there isnt going back to it only creating for each username entered.
        navigationController?.isNavigationBarHidden = false
        
        // to make navigation title large
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
