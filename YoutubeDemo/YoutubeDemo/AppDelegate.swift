//
//  AppDelegate.swift
//  YoutubeDemo
//
//  Created by Mac on 13/03/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
  
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let homeViewController = HomeViewController()
        
        let navCtr = UINavigationController(rootViewController: homeViewController)
        window?.rootViewController = navCtr
        
        // navigation.navigationBar.isTranslucent = false // is use to start the view from 
        // after the Navigation bar line -> Translucent = pardarshi(in hindi)
        navCtr.navigationBar.isTranslucent = false
        
        navCtr.navigationBar.barTintColor = UIColor.red
        
        // the bottom line of nav bar 
        // navcontrooler -> navbar -> shadowImage = UIimage()
        // navcontroller.navigationBar.setbackgroundImage(UIimage(), defaulrt)
        navCtr.navigationBar.shadowImage = UIImage()
        navCtr.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let statusBackgroundView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 32))
        statusBackgroundView.backgroundColor = UIColor.blue
        
        window?.addSubview(statusBackgroundView)
        
        
        
        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

