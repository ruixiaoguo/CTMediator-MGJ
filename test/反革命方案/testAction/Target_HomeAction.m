//
//  Target_HomeAction.m
//  test
//
//  Created by grx on 2018/8/15.
//  Copyright © 2018年 grx. All rights reserved.
//

#import "Target_HomeAction.h"
#import "DetailViewController.h"

@implementation Target_HomeAction
- (UIViewController *)Action_pushToDetailVC
{
    DetailViewController *viewController = [[DetailViewController alloc] init];
    return viewController;
}
- (UIViewController *)Action_pushToDetailVC:(NSDictionary *)params
{
    DetailViewController *viewController = [[DetailViewController alloc] init];
    viewController.listArray = params[@"list"];
    return viewController;
}
- (UIViewController *)Action_pushToDetailVCWithBlock:(NSDictionary *)params{    DetailViewController *viewController = [[DetailViewController alloc] init];
    viewController.clickBlock = ^(NSString *clickTag) {
        /** 将Block从字典中取出 */
        clickDetailBlock callback = params[@"clickBlock"];
        if (callback) {
            callback(clickTag);
        }
    };
    return viewController;
}
@end
