//
//  ViewController.m
//  test
//
//  Created by grx on 2018/8/13.
//  Copyright © 2018年 grx. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+Home.h"
#import <HandyFrame/UIView+LayoutMethods.h>
#import <MGJRouter/MGJRouter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

/** 反革命组件化 */
- (IBAction)pushToDetail:(UIButton *)sender {
    UIViewController *viewController = [[CTMediator sharedInstance] CTMediator_viewControllerForDetail];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)MGJpushToDetail:(id)sender {
    [MGJRouter openURL:@"CTB://Detail/PushDetilVC"
          withUserInfo:@{@"navigationVC":self,@"key":@"pushKey"}
            completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
