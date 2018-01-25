//
//  HJBBaseViewController.h
//  HJBDemo
//
//  Created by hjb_mac_mini on 2018/1/6.
//  Copyright © 2018年 hjb_mac_mini. All rights reserved.
//

#import <QMUIKit/QMUIKit.h>

@interface HJBBaseViewController : QMUICommonViewController
-(void)pushVC:(HJBBaseViewController *)VC animated:(BOOL)animated;
-(void)popVCWithAnimated:(BOOL)animated;
-(void)back:(id)btn;
@end
