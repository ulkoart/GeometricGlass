//
//  MainTabBarController.swift
//  GeometricGlass
//
//  Created by user on 05/12/2019.
//  Copyright © 2019 Artem Ulko. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        let firstViewController = ViewController()
        firstViewController.tabBarItem = UITabBarItem(title: "Test", image: nil, selectedImage: nil)
        
        let tabBarList = [firstViewController]
        viewControllers = tabBarList
        
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
