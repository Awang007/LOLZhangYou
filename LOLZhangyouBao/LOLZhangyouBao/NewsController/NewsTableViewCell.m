//
//  NewsTableViewCell.m
//  LOL掌游宝
//
//  Created by Apple on 2016/10/30.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "NewsTableViewCell.h"

@implementation NewsTableViewCell

 - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}

 - (void)setupUI
{
    //图片
    UIImageView *imageV = [[UIImageView alloc]init];
    
    [self.contentView addSubview:imageV];
    
    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.equalTo(self.contentView).offset(7);
        make.width.mas_equalTo(145);
    }];
    //文章标题
    UILabel *titleLabel = [[UILabel alloc]init];
    
    titleLabel.text = @"faker又被单杀了";
    
    titleLabel.font = [UIFont systemFontOfSize:9];
    
    titleLabel.numberOfLines = 2;
    
    [self.contentView addSubview:titleLabel];
    
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageV).offset(9);
        make.top.equalTo(imageV);
        make.right.equalTo(self.contentView).offset(7);
    }];
    //评论数
    
    UILabel *commentLabel = [[UILabel alloc]init];
    
    commentLabel.text = @"231";
    
    
    
    
    
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
