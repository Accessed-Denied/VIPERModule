//
//  AppDelegate.swift
//  VIPERModule
//
//  Created by Rohit Saini on 31/10/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

   var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let initialViewController = HomeModuleBuilder.build()
        window?.rootViewController = initialViewController
        window?.makeKeyAndVisible()
        return true
    }
}

