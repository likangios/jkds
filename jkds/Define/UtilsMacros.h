//
//  UtilsMacros.h
//  jkds
//
//  Created by perfayMini on 2018/3/15.
//  Copyright © 2018年 perfaylk. All rights reserved.
//

#ifndef UtilsMacros_h
#define UtilsMacros_h

//获取系统对象

#define kApplication        [UIApplication sharedApplication]
#define kAppWindow          [UIApplication sharedApplication].delegate.window
#define kAppDelegate        [AppDelegate shareAppDelegate]

#define kRootViewController [UIApplication sharedApplication].delegate.window.rootViewController
#define kUserDefaults       [NSUserDefaults standardUserDefaults]
#define kNotificationCenter [NSNotificationCenter defaultCenter]

#define kStatusBarHeight [[UIApplication sharedApplication] statusBarFrame].size.height
#define kNavBarHeight 44.0
#define kTabBarHeight ([[UIApplication sharedApplication] statusBarFrame].size.height>20?83:49)
#define kTopHeight (kStatusBarHeight + kNavBarHeight)

//获取屏幕宽高
#define KScreenWidth ([[UIScreen mainScreen] bounds].size.width)
#define KScreenHeight [[UIScreen mainScreen] bounds].size.height
#define kScreen_Bounds [UIScreen mainScreen].bounds

#define Iphone6ScaleWidth KScreenWidth/375.0
#define Iphone6ScaleHeight KScreenHeight/667.0
//根据ip6的屏幕来拉伸
#define kRealValue(with) ((with)*(KScreenWidth/375.0f))

//强弱引用
#define kWeakSelf(type)  __weak typeof(type) weak##type = type;
#define kStrongSelf(type) __strong typeof(type) type = weak##type;


#endif /* UtilsMacros_h */
