//
//  LOLTabBarViewController.m
//  lol掌游宝
//
//  Created by Apple on 2016/10/28.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "LOLTabBarViewController.h"

@interface LOLTabBarViewController ()

@end

@implementation LOLTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupUI];
}
#pragma mark  - 构建子控制器
 - (void)setupUI
{
    
    self.tabBar.barTintColor  = [UIColor blackColor];
    
    //创建一个控制器数组,5ge
    
    NSMutableArray *arrM = [NSMutableArray arrayWithCapacity:5];
    //新闻资讯控制器
    UIViewController *newViewController = [self viewControllerWithClassName:@"UINewsMainViewController" title:@"新闻资讯" imageName:@"tab_infomation_normal@2x.png"];
    [arrM addObject:newViewController];
    
    //视屏控制器Video
    [arrM addObject:[self viewControllerWithClassName:@"VideoViewController" title:@"视频" imageName:@"tab_video_normal@2x.png"]];
    //英雄控制器Hero
    [arrM addObject:[self viewControllerWithClassName:@"HeroViewController" title:@"英雄" imageName:@"tab_heros_normal@2x.png"]];
   //社区控制器Conmmunity
    [arrM addObject:[self viewControllerWithClassName:@"CommunityViewController" title:@"社区" imageName:@"tab_community_normal@2x.png"]];
    //更多控制器Other
    [arrM addObject:[self viewControllerWithClassName:@"OtherViewController" title:@"更多" imageName:@"tab_more_normal@2x.png"]];
    
    self.viewControllers  = arrM;
 
}

//返回一个导航控制器,根据控制器名字
 - (UIViewController *)viewControllerWithClassName:(NSString *)claName title:(NSString *)title imageName:(NSString *)imageName
{
    
    //根据传入的类名 创建一个控制器对象
    Class cla = NSClassFromString(claName);
    UIViewController * vc = [[cla alloc]init];
    
    //设置控制器的信息
    vc.title = title; //这一句话可以同时设置TabBar和navigationBar的title.
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    //选中的图像
//    UIImage * selectImage = [UIImage imageNamed:[imageName stringByAppendingString:@"_Sel"]];
//    vc.tabBarItem.selectedImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //创建NavigationController
    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:vc];
    nav.navigationBar.barTintColor = [UIColor blackColor];
   
    //设置字体颜色
    NSDictionary *attribu = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    [nav.navigationBar setTitleTextAttributes:attribu];
    
    return  nav;
    
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
