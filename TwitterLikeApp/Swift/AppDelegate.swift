//
//  AppDelegate.swift
//  TwitterLikeApp
//
//  Created by Koichi Muranaka on 2020/07/30.
//  Copyright © 2020 Koichi Muranaka. All rights reserved.
//

import UIKit
import NCMB

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // NCMBとプロジェクトを連携する
        let applicationKey = "be409f78de8c71e09c519b2493bd7784ffac68c8fc0f40b88018193309a45a52"
        let clientKey = "f7ee12125f3620701681b73e1343ec2af8564cfe35a11fbf20ab795ad391ef96"
        NCMB.setApplicationKey(applicationKey, clientKey: clientKey)
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

