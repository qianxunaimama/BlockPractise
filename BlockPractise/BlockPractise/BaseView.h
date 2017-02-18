//
//  BaseView.h
//  BlockPractise
//
//  Created by zxj on 17/2/17.
//  Copyright © 2017年 zxj. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ButtonBlock)(id sender);

@interface BaseView : UIView

- (instancetype)initWithFrame:(CGRect)frame andClickBlock:(ButtonBlock)buttonClickBlock;

@end
