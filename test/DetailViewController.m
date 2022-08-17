//
//  DetailViewController.m
//  test
//
//  Created by grx on 2018/8/15.
//  Copyright © 2018年 grx. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    if (self.listArray) {
       NSLog(@"参数传递======%@",self.listArray);
    }
    if (self.pushKeyStr) {
       NSLog(@"参数传递======%@",self.pushKeyStr);
    }
    UIButton *tagBtn = [[UIButton alloc]initWithFrame:CGRectMake(110, 300, 200, 50)];
    [tagBtn setTitle:@"Block回调" forState:UIControlStateNormal];
    tagBtn.layer.borderWidth = 1;
    tagBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    tagBtn.layer.cornerRadius = 10;
    [self.view addSubview:tagBtn];
    [tagBtn addTarget:self action:@selector(tagBtnClick) forControlEvents:UIControlEventTouchUpInside];
}

-(void)tagBtnClick{
    
    if (self.clickBlock) {
        self.clickBlock(@"Block回调！！！");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
