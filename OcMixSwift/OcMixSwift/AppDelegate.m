//
//  AppDelegate.m
//  OcMixSwift
//
//  Created by mac on 2020/6/3.
//  Copyright © 2020 mac. All rights reserved.
//

#import "AppDelegate.h"
#import "OcMixSwift-Swift.h"  //注意，下面的引用是错误的,详见第四条
//#import "OcMixSwift-Bridging-Header.h"

/*
 1.直接创建swift文件
 2.弹出提示选择创建桥接文件
 3.在桥接文件中引入在swift中使用的oc类
 4.在oc中引入"项目名+Swift.h",系统无提示
 5.在oc中使用swift
 */

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Person *person = [[Person alloc] init];
    [person sayHelloWithName:@"LiLei"];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
