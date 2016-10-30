//
//  selecterView.h
//  LOL掌游宝
//
//  Created by Apple on 2016/10/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface selecterView : UIControl

@property(nonatomic,assign)NSInteger index;

@property(nonatomic,assign)NSInteger offsetIndex;

+(instancetype)selecter;
@end
