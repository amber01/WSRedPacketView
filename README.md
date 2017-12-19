# WSRedPacketView


## Overview

**WSRedPacketView**是模仿微信抢红包的功能，动画效果也操作体验和微信的基本一致，如果有需要用到类似的功能大家可以下载参考一下。

#### 截图概述

![Mou icon](https://wx3.sinaimg.cn/mw690/63f96e20gy1fmm5riv3g5g209c0grmzj.gif)

#### 使用
```objc
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

```
