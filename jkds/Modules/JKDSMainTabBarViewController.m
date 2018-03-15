//
//  JKDSMainTabBarViewController.m
//  jkds
//
//  Created by perfayMini on 2018/3/15.
//  Copyright © 2018年 perfaylk. All rights reserved.
//

#import "JKDSMainTabBarViewController.h"
#import "JKDSRootNavigationController.h"
#import "JKDSExamViewController.h"
#import "JKDSHomeViewController.h"
#import "JKDSMineViewController.h"

@interface JKDSMainTabBarViewController ()

@end

@implementation JKDSMainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadViewControllers];
}
- (void)loadViewControllers{
    NSArray *vcs = @[@"JKDSHomeViewController",@"JKDSExamViewController",@"JKDSMineViewController"];
    NSArray *taritemtitle = @[@"练习",@"考试",@"我的"];
    NSArray *tabimg = @[@"tabBarIcon_1",@"tabBarIcon_2",@"tabBarIcon_4",@"tabBarIcon_4"];
    NSArray *tabselimg = @[@"tabBarIcon_1_sel",@"tabBarIcon_2_sel",@"tabBarIcon_4_sel",@"tabBarIcon_4_sel"];
    NSMutableArray *viewcontrollers = [NSMutableArray array];
    NSInteger count = 0;
    for (NSString *class_name in vcs) {
        UIViewController *vc = [[NSClassFromString(class_name) alloc]init];
        UITabBarItem *item =[[UITabBarItem alloc]initWithTitle:taritemtitle[count] image:[[UIImage imageNamed:tabimg[count]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:tabselimg[count]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        [item setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"2873dd"]} forState:UIControlStateSelected];
        vc.tabBarItem = item;
        JKDSRootNavigationController *nav = [[JKDSRootNavigationController alloc]initWithRootViewController:vc];
        [viewcontrollers addObject:nav];
        count++;
    }
    self.viewControllers = viewcontrollers;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
