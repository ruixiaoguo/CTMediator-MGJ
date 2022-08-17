//
//  CTMediator+Home.h
//  test
//
//  Created by grx on 2018/8/15.
//  Copyright © 2018年 grx. All rights reserved.
//

#import "CTMediator.h"

@interface CTMediator (Home)
typedef void (^clickMediaDetailBlock)(NSString *clickTag);
/** 不带参数 */
- (UIViewController *)CTMediator_viewControllerForDetail;
/** 带参数 */
- (UIViewController *)CTMediator_viewControllerForParmasDetail:(NSDictionary *)dic;
/** 带Block回调 */
- (UIViewController *)CTMediator_viewControllerForDetailWithBlock:(clickMediaDetailBlock)block;
@end
