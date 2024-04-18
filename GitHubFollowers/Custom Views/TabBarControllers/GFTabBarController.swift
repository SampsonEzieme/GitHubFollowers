//
//  GFTabBarController.swift
//  GitHubFollowers
//
//  Created by Sampson Ezieme on 4/15/24.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearance                        = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        UITabBar.appearance().scrollEdgeAppearance  = tabBarAppearance
        UITabBar.appearance().tintColor             = .systemGreen
        viewControllers                             = [createSearchNC(), createFavoritesNC()]
        
        // Do any additional setup after loading the view.
    }
    

    func createSearchNC() -> UINavigationController {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        
        let searchVC        = SearchViewController()
        searchVC.title      = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    
    func createFavoritesNC() -> UINavigationController {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        
        let favoritesListVC         = FavoritesListViewController()
        favoritesListVC.title       = "Favorites"
        favoritesListVC.tabBarItem  = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesListVC)
    }

}
