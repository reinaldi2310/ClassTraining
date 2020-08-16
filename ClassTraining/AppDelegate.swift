//
//  AppDelegate.swift
//  ClassTraining
//
//  Created by User on 31/07/20.
//  Copyright © 2020 User. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigation = UINavigationController(rootViewController: HomeController())
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
        
        return true
    }
}

