//
//  WSRewardConfig.h
//  RedPacketViewDemo
//
//  Created by tank on 2017/12/19.
//  Copyright © 2017年 tank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WSRewardConfig : NSObject

@property (nonatomic, assign) float     money;
@property (nonatomic, strong) UIImage   *avatarImage;
@property (nonatomic, copy  ) NSString  *content;
@property (nonatomic, copy  ) NSString  *userName;

@end
