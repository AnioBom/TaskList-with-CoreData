//
//  AppDelegate.swift
//  TaskList
//
//  Created by mac on 10/7/22.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var storageManager = StorageManager()

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController(rootViewController: TaskListTableVC())
        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }

}

