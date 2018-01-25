//
//  HJBHomeVC.m
//  HJBDemo
//
//  Created by hjb_mac_mini on 2018/1/6.
//  Copyright © 2018年 hjb_mac_mini. All rights reserved.
//

#import "HJBHomeVC.h"
#import "HJBHomeDetailVC.h"
#import <AVFoundation/AVFoundation.h>
#import <Result/Result.h>
@interface HJBHomeVC ()

@end

@implementation HJBHomeVC
-(void)setNavigationItemsIsInEditMode:(BOOL)isInEditMode animated:(BOOL)animated{
    [super setNavigationItemsIsInEditMode:isInEditMode animated:animated];
    self.navigationController.navigationBarHidden = YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
}

-(void)initSubviews{
    [super initSubviews];
    self.view.backgroundColor = UIColorWhite;
    QMUIButton *button = [[QMUIButton alloc] initWithImage:nil title:@"跳转"];
    button.frame = CGRectMake(100, 100, 100, 44);
    [button addTarget:self action:@selector(turnDetailVC) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
    
}
-(void)turnDetailVC{
//    AVSpeechSynthesizer * synthsizer = [[AVSpeechSynthesizer alloc] init];
//    AVSpeechUtterance * utterance = [[AVSpeechUtterance alloc] initWithString:@"北国风光，千里冰封，万里雪飘。望长城内外，惟余莽莽；大河上下，顿失滔滔。山舞银蛇，原驰蜡象，欲与天公试比高。须晴日，看红装素裹，分外妖娆。江山如此多娇，引无数英雄竞折腰。惜秦皇汉武，略输文采；唐宗宋祖，稍逊风骚。一代天骄，成吉思汗，只识弯弓射大雕。俱往矣，数风流人物，还看今朝。"];//需要转换的文本
//    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"];//国家语言
//    utterance.rate = 0.4f;//声速
//    [synthsizer speakUtterance:utterance];
   
    HJBHomeDetailVC *detailVC = [HJBHomeDetailVC new];
    [self pushVC:detailVC animated:YES];
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
