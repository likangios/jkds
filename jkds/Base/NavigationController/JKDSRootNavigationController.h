//
//  JKDSRootNavigationController.h
//  jkds
//
//  Created by perfayMini on 2018/3/15.
//  Copyright © 2018年 perfaylk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKDSRootNavigationController : UINavigationController

/*!
 *  返回到指定的类视图
 *
 *  @param ClassName 类名
 *  @param animated  是否动画
 */
-(BOOL)popToAppointViewController:(NSString *)ClassName animated:(BOOL)animated;


@end
