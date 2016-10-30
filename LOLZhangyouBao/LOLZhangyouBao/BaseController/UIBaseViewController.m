//
//  UIBaseViewController.m
//  lol掌游宝
//
//  Created by Apple on 2016/10/28.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIBaseViewController.h"

@interface UIBaseViewController ()

@end

@implementation UIBaseViewController
//
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [UIApplication  sharedApplication].statusBarStyle =UIStatusBarStyleLightContent;
    //让控制器视图不被工具控制器遮挡
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self setupUI];
    
   
}

 - (void)setupUI
{
    
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
