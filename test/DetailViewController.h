//
//  DetailViewController.h
//  test
//
//  Created by grx on 2018/8/15.
//  Copyright © 2018年 grx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (nonatomic,copy) void(^clickBlock)(NSString *clickTag);
@property (nonatomic,strong) NSArray *listArray;
@property (nonatomic,strong) NSString *pushKeyStr;
@end

