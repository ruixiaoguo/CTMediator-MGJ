//
//  Target_HomeAction.h
//  test
//
//  Created by grx on 2018/8/15.
//  Copyright © 2018年 grx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Target_HomeAction : NSObject
typedef void (^clickDetailBlock)(NSString *clickTag);
/** 不带参数 */
- (UIViewController *)Action_pushToDetailVC;
/** 带参数 */
- (UIViewController *)Action_pushToDetailVC:(NSDictionary *)params;
/** 带Block回调 */
- (UIViewController *)Action_pushToDetailVCWithBlock:(NSDictionary *)params;

@end
