//
//  ViewController.m
//  RedPacketViewDemo
//
//  Created by tank on 2017/12/18.
//  Copyright © 2017年 tank. All rights reserved.
//

#import "ViewController.h"
#import "WSRedPacketView.h"
#import "WSRewardConfig.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *redPacketButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width - 80,self.view.frame.size.height - 120, 48, 48)];
    [redPacketButton setImage:[UIImage imageNamed:@"red_packet"] forState:UIControlStateNormal];
    [redPacketButton addTarget:self action:@selector(openRedPacketAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:redPacketButton];
    

}

- (void)openRedPacketAction
{
    
    WSRewardConfig *info = ({
        WSRewardConfig *info   = [[WSRewardConfig alloc] init];
        info.money         = 100.0;
        info.avatarImage    = [UIImage imageNamed:@"avatar"];
        info.content = @"恭喜发财，大吉大利";
        info.userName  = @"小雨同学";
        info;
    });
    
    
    [WSRedPacketView showRedPackerWithData:info cancelBlock:^{
        NSLog(@"取消领取");
    } finishBlock:^(float money) {
        NSLog(@"领取金额：%f",money);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
