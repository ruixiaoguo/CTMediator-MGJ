//
//  DetailModule.m
//  test
//
//  Created by grx on 2018/8/15.
//  Copyright © 2018年 grx. All rights reserved.
//

#import "MGJDetailModule.h"
#import <MGJRouter/MGJRouter.h>
#import "DetailViewController.h"

@implementation MGJDetailModule

// 在load方法中自动注册，在主工程中不用写任何代码。
+ (void)load {
    [MGJRouter registerURLPattern:@"CTB://Detail/PushDetilVC" toHandler:^(NSDictionary *routerParameters) {
        UIViewController *navigationVC = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        DetailViewController *detailVC = [[DetailViewController alloc] init];
        detailVC.pushKeyStr = routerParameters[MGJRouterParameterUserInfo][@"key"];
        [navigationVC presentViewController:detailVC animated:YES completion:nil];
    }];
}

@end
