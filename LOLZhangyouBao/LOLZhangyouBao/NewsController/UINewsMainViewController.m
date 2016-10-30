//
//  UIMainViewController.m
//  lol掌游宝
//
//  Created by Apple on 2016/10/28.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UINewsMainViewController.h"
#import "LOLNewsViewController.h"
#import "selecterView.h"
@interface UINewsMainViewController ()<UIScrollViewDelegate>
@property(nonatomic,weak)UIScrollView*scv;
@property(nonatomic,weak)UIView*contentV;
@property(nonatomic,weak)selecterView *selectView;
@end

@implementation UINewsMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

 - (void)setupUI
{
    
    self.view.backgroundColor = [UIColor redColor];

    //构建导航栏
    [self setBarItem];
    [self setupViewControllers];
    
    
    
    
}


 -(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
   
}

#pragma mark - 滚动代理


- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //改变按钮选项
    //计算scv滚动距离算出下标
    //获得x方向偏移量
    CGFloat offsetX = scrollView.contentOffset.x;
    
    NSInteger index = offsetX/self.view.frame.size.width;
    
    self.selectView.offsetIndex = index;
    
}
#pragma mark - 选择视图回调方法
- (void)changeIndex:(selecterView *)selecView{

    
    //让视图滚到某个控制器
    [self.scv setContentOffset:CGPointMake(selecView.index *self.view.frame.size.width, 0) animated:YES];


}

#pragma mark - 构建news控制器视图
 - (void)setupViewControllers
{
    self.tabBarItem.title = @"资讯";
    //滚动视图
    UIScrollView *scv = [[UIScrollView alloc]initWithFrame:self.view.frame];
//    scv.backgroundColor = [UIColor blueColor];
    [self.view addSubview:scv];
   
    //容器视图
    NSInteger numberOfControllers = 4;
    
    UIView *content = [[UIView alloc]initWithFrame:CGRectMake(0, 0, numberOfControllers * self.view.frame.size.width, self.view.frame.size.height)];
    
    content.backgroundColor = [UIColor orangeColor];
    [scv addSubview:content];
    self.contentV = content;
    scv.contentSize =CGSizeMake(content.frame.size.width, 0);
    scv.bounces  = NO;
    scv.pagingEnabled = YES;
    scv.delegate = self;
    scv.showsVerticalScrollIndicator = NO;
    scv.showsHorizontalScrollIndicator = NO;
    self.scv = scv;
    //添加选择视图
    selecterView *sv = [selecterView selecter];
 
    [self.view addSubview:sv];
    self.selectView = sv;
    [sv addTarget:self action:@selector(changeIndex:) forControlEvents:UIControlEventValueChanged];
    //设定约束
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(self.view);
    }];
    
    [scv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(sv.mas_bottom);
        make.bottom.right.left.equalTo(self.view);
    
    }];
    
    [self addChildViewControllers];
   
    
    
}


 - (void)addChildViewControllers
{
    NSArray *vcs = @[@"LOLNewsViewController",@"MostViewController",@"ContestViewController",@"AmuseViewController"];
    NSInteger index = 0;
    for (NSString *vcName in vcs)
    {
        Class class = NSClassFromString(vcName);
        // 断言
        NSAssert( [class isSubclassOfClass:[UIViewController class]], @"不是控制器不要给我");
         UIViewController *vc =  [[class alloc] init];
        
        [self hm_addChildViewController:vc intoView:self.contentV];
        
        CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
        // 添加约束
        [vc.view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.equalTo(self.contentV);
            make.width.mas_equalTo(self.scv);
            make.left.mas_equalTo(self.scv).offset(screenW * index);
        }];
        // 索引 ++
        index ++;
        
    }
}




#pragma mark - 构建导航控制器按钮设置
 - (void)setBarItem
{
    //设置导航栏按钮左边图片
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"leftUserBTN@2x.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pushConsumerView)];
    
    //设置右边搜索
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"搜索图标@2x.png"] style:UIBarButtonItemStylePlain target:self action:@selector(search)];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
}

//导航按钮
 - (void)pushConsumerView
{
   //让控制器页面缩小并且放大
    
    
    
}

 - (void)search
{
    
}
//第一个控制器需要添加边缘托拽手势
//并且拖拽时控制器变小并且右移动
//移动完毕添加点击手势,手势效果复原视图位置












- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// In a storyboard-based application, you will often want to do a little preparation before navigation
/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
