//
//  HJBHomeDetailVC.m
//  HJBDemo
//
//  Created by hjb_mac_mini on 2018/1/6.
//  Copyright © 2018年 hjb_mac_mini. All rights reserved.
//

#import "HJBHomeDetailVC.h"

@interface HJBHomeDetailVC ()
@property (nonatomic,strong) QMUILabel *timeLbl;
@end

@implementation HJBHomeDetailVC

-(void)setNavigationItemsIsInEditMode:(BOOL)isInEditMode animated:(BOOL)animated{
    [super setNavigationItemsIsInEditMode:isInEditMode animated:animated];
    self.navigationController.navigationBarHidden = NO;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:(UIBarButtonItemStylePlain) target:self action:@selector(back:)];
}
-(void)dealloc{
    NSLog(@"timer dealloc");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    QMUILabel *timeLbl = [[QMUILabel alloc] initWithFont:UIFontMake(30) textColor:UIColorBlue];
    timeLbl.frame = CGRectMake(100, 200, SCREEN_WIDTH - 200, 30);
    timeLbl.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:timeLbl];
    _timeLbl = timeLbl;
    
    //NSTime
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(refreshLbl:) userInfo:nil repeats:NO];
//    [timer invalidate];
    
    
    
    // Do any additional setup after loading the view.
}

-(void)refreshLbl:(NSTimer *)timer{
    
    NSLog(@"************%@",timer);
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
