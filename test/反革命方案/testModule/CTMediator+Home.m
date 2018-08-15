//
//  CTMediator+Home.m
//  test
//
//  Created by grx on 2018/8/15.
//  Copyright © 2018年 grx. All rights reserved.
//

#import "CTMediator+Home.h"
NSString * const kCTMediatorTargetHome = @"HomeAction";
NSString * const kCTPushDetailViewController = @"pushToDetailVC";

@implementation CTMediator (Home)

- (UIViewController *)CTMediator_viewControllerForDetail
{
    UIViewController *viewController = [self performTarget:kCTMediatorTargetHome
                                                    action:kCTPushDetailViewController
                                                    params:@{@"key":@"value"}
                                         shouldCacheTarget:NO
                                        ];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}

@end
