//
//  WSRedPacketView.h
//  Lottery
//
//  Created by tank on 2017/12/16.
//  Copyright © 2017年 tank. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WSRewardConfig.h"

typedef void(^WSCancelBlock)(void);
typedef void(^WSFinishBlock)(float money);

@interface WSRedPacketView : UIViewController

+ (instancetype)showRedPackerWithData:(WSRewardConfig *)data
                          cancelBlock:(WSCancelBlock)cancelBlock
                          finishBlock:(WSFinishBlock)finishBlock;

@end
