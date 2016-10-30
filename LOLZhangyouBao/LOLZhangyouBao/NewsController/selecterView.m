//
//  selecterView.m
//  LOL掌游宝
//
//  Created by Apple on 2016/10/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "selecterView.h"

@interface selecterView ()
@property (weak, nonatomic) IBOutlet UIButton *newsButton;
@property (weak, nonatomic) IBOutlet UIButton *mostNewBtn;
@property (weak, nonatomic) IBOutlet UIButton *contestBtn;
@property (weak, nonatomic) IBOutlet UIButton *amuseBtn;

/**
 记录按钮数组
 */
@property(nonatomic,strong)NSArray<UIButton *>*btns;
/**
 *  记录当前选中的按钮
 */
@property (nonatomic, weak) UIButton *selectedBtn;
@end
//#2E3139
@implementation selecterView

+(instancetype)selecter
{
    return [[NSBundle mainBundle] loadNibNamed:@"selecterView" owner:nil options:nil].lastObject;
}


 - (void)setOffsetIndex:(NSInteger)offsetIndex
{
    _offsetIndex = offsetIndex;
    
    self.selectedBtn.selected  = NO;
    
    self.selectedBtn = self.btns[offsetIndex];
    
    self.selectedBtn.selected  = YES;
    
}




/**
 按钮点击事件

 
 */
- (IBAction)selecterIndex:(UIButton *)sender {
    
    
    if(sender == self.selectedBtn) return;
    
    self.selectedBtn.selected  = NO;
    
    self.selectedBtn = self.btns[sender.tag];
    
    self.selectedBtn.selected  = YES;
    
    //记录下标
    self.index = sender.tag;
    
    [self sendActionsForControlEvents:UIControlEventValueChanged];
    
    
}


- (void)awakeFromNib
{
    [super awakeFromNib];
    
    //记录
    self.btns = @[self.mostNewBtn,self.newsButton,self.contestBtn,self.amuseBtn];
    
    
    //让第一个按钮为选中状态
    self.selectedBtn = self.btns[0];
    
    self.selectedBtn.selected = YES;
    
    
}


@end
