//
//  AppDelegate.m
//  XEShopSDKDemo
//
//  Created by page on 2019/6/28.
//  Copyright © 2019 com.xiao. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <XEShopSDK/XEShopSDK.h>
#import "XEShopSDKDemoMaro.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 初始化window窗体
    self.window = [[UIWindow alloc]initWithFrame:UIScreen.mainScreen.bounds];
    self.window.rootViewController = [[UINavigationController alloc]initWithRootViewController:[ViewController new]];
    [self.window makeKeyAndVisible];
    
    /* 以下为小鹅通内嵌店铺SDK初始化代码段 */
    
    // 创建配置 clientId 从小鹅通申请的 sdk 应用 Id， appId 从小鹅通申请的店铺 Id
    XEConfig *config = [[XEConfig alloc] initWithClientId:DefaultClientId appId: DefaultAppId];
    // 关闭 SDK 日志输出
    config.enableLog = YES;
    // 配置你app独立的 Scheme 以便微信支付完成后跳转返回
    config.scheme = @"app-unique-scheme";
    // 初始化SDK
    [XESDK.shared initializeSDKWithConfig:config];

    return YES;
}

@end
