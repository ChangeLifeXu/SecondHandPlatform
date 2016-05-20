//
//  AppDelegate.swift
//  SHandPro
//
//  Created by Hubert on 16/5/15.
//  Copyright © 2016年 Hubert. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        self.initTabbar()
        return true
    }
    
    func initTabbar(){
        let mainVC = MainPageViewController()
        let communityVC = CommunityViewController()
        let releaseVC = ReleaseViewController()
        let messageVC = MessageViewController()
        let personVC = PersonalCenterViewController()
        
        mainVC.tabBarItem.image = UIImage(named: "")
        communityVC.tabBarItem.image = UIImage(named: "")
        releaseVC.tabBarItem.image = UIImage(named: "")
        messageVC.tabBarItem.image = UIImage(named: "")
        personVC.tabBarItem.image = UIImage(named: "")
        
        mainVC.tabBarItem.selectedImage = UIImage(named: "")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        communityVC.tabBarItem.selectedImage = UIImage(named: "")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        releaseVC.tabBarItem.selectedImage = UIImage(named: "")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        messageVC.tabBarItem.selectedImage = UIImage(named: "")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        personVC.tabBarItem.selectedImage = UIImage(named: "")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object: UIColor.orangeColor(),forKey: NSForegroundColorAttributeName)as?[String:AnyObject], forState: UIControlState.Selected)
        
        mainVC.tabBarItem.title = "首页"
        communityVC.tabBarItem.title = "社区"
        releaseVC.tabBarItem.title = "发布"
        messageVC.tabBarItem.title = "消息"
        personVC.tabBarItem.title = "个人中心"
        
        let tabbar = UITabBarController()
        tabbar.viewControllers = [mainVC,communityVC,releaseVC,messageVC,personVC]
        
        self.window?.rootViewController = tabbar
        self.window?.backgroundColor = UIColor.whiteColor()
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

