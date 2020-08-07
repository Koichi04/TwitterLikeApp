//
//  SceneDelegate.swift
//  TwitterLikeApp
//
//  Created by Koichi Muranaka on 2020/07/30.
//  Copyright © 2020 Koichi Muranaka. All rights reserved.
//

import UIKit
import NCMB

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
        
        
        // 保存領域を作る
        let ud = UserDefaults.standard
        let isLogin = ud.bool(forKey: "isLogin")
        let window = UIWindow(windowScene: scene as! UIWindowScene)
        
        
        // ストーリーボードをスイッチする
        if isLogin == true {
            print("ログインなう")
            // ログイン中だった場合の分岐
            self.window = UIWindow(frame: UIScreen.main.bounds)
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            // VCをインスタンス化
            let rootVC = storyboard.instantiateViewController(identifier: "RootTabBarController")
            self.window?.rootViewController = rootVC
            self.window?.backgroundColor = UIColor.white
            // windowを表示する
            self.window?.makeKeyAndVisible()
            
        } else {
            print("ログアウトなう")
            //　ログインしていないとき
            self.window = UIWindow(frame: UIScreen.main.bounds)
            let storyboard = UIStoryboard(name: "LogIn", bundle: Bundle.main)
            // VCをインスタンス化
            let rootVC = storyboard.instantiateViewController(identifier: "RootNavigationController")
            self.window?.rootViewController = rootVC
            self.window?.backgroundColor = UIColor.white
            // windowを表示する
            self.window?.makeKeyAndVisible()
        }
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

