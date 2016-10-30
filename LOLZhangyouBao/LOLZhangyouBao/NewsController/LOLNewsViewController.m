//
//  LOLNewsViewController.m
//  lol掌游宝
//
//  Created by Apple on 2016/10/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "LOLNewsViewController.h"

@interface LOLNewsViewController ()

@end

@implementation LOLNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadData];
}





#pragma mark - 加载数据

 - (void)loadData
{
    
}




#pragma mark - 数据源方法
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return 2 ;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellid"];
//    
//    // 设置 Cell...
//    
//    return cell;
//}






#pragma mark - 构建界面
- (void)setupUI
{
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    UITableView *tabV = [[UITableView alloc]init];
    
    tabV.frame = self.view.frame;
//    tabV.dataSource = self;
    [self.view addSubview:tabV];
    
    
}

@end
