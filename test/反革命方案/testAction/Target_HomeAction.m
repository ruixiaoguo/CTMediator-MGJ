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

- (UIViewController *)Action_pushToDetailVC:(NSDictionary *)params
{
    DetailViewController *viewController = [[DetailViewController alloc] init];
    viewController.pushKeyStr = params[@"key"];
    return viewController;
}

@end
