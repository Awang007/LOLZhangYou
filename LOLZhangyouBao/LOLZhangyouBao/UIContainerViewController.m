//
//  UIContainerViewController.m
//  lol掌游宝
//
//  Created by Apple on 2016/10/28.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIContainerViewController.h"
#import "ConsumerViewController.h"
#import "LOLTabBarViewController.h"
@interface UIContainerViewController ()

@end
@implementation UIContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

 - (void)setupUI
{
    //创建用户的控制器
    ConsumerViewController *consumer = [[ConsumerViewController alloc]init];
    
    consumer.view.frame = self.view.bounds;
    
    //添加到这个控制器中
    [self.view addSubview:consumer.view];
    
    //然后是tarcontroller
    [self addChildViewController:consumer];
    
    //添加进来
    [consumer didMoveToParentViewController:self];
    
    //就是tabarcontroller
    LOLTabBarViewController *tabarV = [[LOLTabBarViewController alloc]init];
    
    [self.view addSubview:tabarV.view];
    
    [self addChildViewController:tabarV];
    
    [tabarV didMoveToParentViewController:self];
    
    
    
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
