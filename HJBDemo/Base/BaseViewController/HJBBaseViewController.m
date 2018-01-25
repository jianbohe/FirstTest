//
//  HJBBaseViewController.m
//  HJBDemo
//
//  Created by hjb_mac_mini on 2018/1/6.
//  Copyright © 2018年 hjb_mac_mini. All rights reserved.
//

#import "HJBBaseViewController.h"

@interface HJBBaseViewController ()

@end

@implementation HJBBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)setNavigationItemsIsInEditMode:(BOOL)isInEditMode animated:(BOOL)animated{
    [super setNavigationItemsIsInEditMode:isInEditMode animated:animated];
}

-(void)pushVC:(HJBBaseViewController *)VC animated:(BOOL)animated{
    [self.navigationController pushViewController:VC animated:animated];
}

-(void)popVCWithAnimated:(BOOL)animated{
    [self.navigationController popViewControllerAnimated:animated];
}

-(void)back:(id)btn{
    [self popVCWithAnimated:YES];
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
