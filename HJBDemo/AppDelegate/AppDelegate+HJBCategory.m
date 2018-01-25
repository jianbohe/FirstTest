//
//  AppDelegate+HJBCategory.m
//  HJBDemo
//
//  Created by hjb_mac_mini on 2018/1/6.
//  Copyright © 2018年 hjb_mac_mini. All rights reserved.
//

#import "AppDelegate+HJBCategory.h"
#import "HJBBaseTabbarVC.h"
#import "HJBBaseNavigationVC.h"
#import "HJBHomeVC.h"
#import "HJBUserProfileVC.h"
@implementation AppDelegate (HJBCategory)

-(void)showTabbarVC{
    HJBHomeVC *homeVC = [[HJBHomeVC alloc] init];
    HJBBaseNavigationVC *navc1 = [[HJBBaseNavigationVC alloc] initWithRootViewController:homeVC];
    navc1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@""] tag:0];
    homeVC.hidesBottomBarWhenPushed = NO;    
    
    HJBUserProfileVC *profileVC = [[HJBUserProfileVC alloc] init];
    HJBBaseNavigationVC *navc2 = [[HJBBaseNavigationVC alloc] initWithRootViewController:profileVC];
    profileVC.hidesBottomBarWhenPushed = NO;
    navc2.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@""] tag:1];
    
    HJBBaseTabbarVC *tabbarVC = [[HJBBaseTabbarVC alloc] init];
    tabbarVC.viewControllers = @[navc1,navc2];
    self.window.rootViewController = tabbarVC;
}

@end
