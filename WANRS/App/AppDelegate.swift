//
//  AppDelegate.swift
//  WANRS
//
//  Created by Dima Savelyev on 28.06.2022.
//

import UIKit
import FirebaseCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        window = UIWindow()
        let nav = UINavigationController(rootViewController: ViewController())
        nav.navigationBar.scrollEdgeAppearance = nav.navigationBar.standardAppearance
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        return true
    }

}
