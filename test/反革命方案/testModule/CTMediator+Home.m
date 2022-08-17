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
NSString * const kCTPushDetailBlockViewController = @"pushToDetailVCWithBlock";


@implementation CTMediator (Home)

- (UIViewController *)CTMediator_viewControllerForDetail
{
    UIViewController *viewController = [self performTarget:kCTMediatorTargetHome
                                                    action:kCTPushDetailViewController
                                                    params:@{}
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
- (UIViewController *)CTMediator_viewControllerForParmasDetail:(NSDictionary *)dic
{
    UIViewController *viewController = [self performTarget:kCTMediatorTargetHome
                                                    action:kCTPushDetailViewController
                                                    params:dic
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

- (UIViewController *)CTMediator_viewControllerForDetailWithBlock:(clickMediaDetailBlock)block{
    /** 将Block存入字典中 */
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    if (block) {
        params[@"clickBlock"] = block;
    }
    UIViewController *viewController = [self performTarget:kCTMediatorTargetHome
                                                    action:kCTPushDetailBlockViewController
                                                    params:params
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
