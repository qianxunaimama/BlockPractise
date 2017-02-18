//
//  BaseView.m
//  BlockPractise
//
//  Created by zxj on 17/2/17.
//  Copyright © 2017年 zxj. All rights reserved.
//

#import "BaseView.h"

@interface BaseView()

@property(nonatomic,strong) ButtonBlock buttonClickblock;

@property(nonatomic,strong) UIButton *button;

@end

@implementation BaseView

- (instancetype)initWithFrame:(CGRect)frame andClickBlock:(ButtonBlock)buttonClickBlock{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self initView];
        
        self.buttonClickblock = buttonClickBlock;
    }
    
    return self;
}

- (void)initView{
    
    [self addSubview:self.button];
    
}

#pragma mark - button点击事件
- (void)buttonClicked{

    if(self.buttonClickblock){
        self.buttonClickblock(self.button);
    }
}

#pragma mark - Get Method
- (UIButton *)button{

    if (!_button) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.frame = CGRectMake(100,100, 100, 100);
        _button.backgroundColor = [UIColor orangeColor];
        [_button setTitle:@"点击我" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _button;
}

@end
