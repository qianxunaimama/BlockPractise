//
//  ViewController.m
//  BlockPractise
//
//  Created by zxj on 17/2/17.
//  Copyright © 2017年 zxj. All rights reserved.
//

#import "ViewController.h"
#import "BaseView.h"

@interface ViewController ()

@property(nonatomic,strong) BaseView *baseView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self.view addSubview:self.baseView];
    
}

-(BaseView *)baseView{
    
    if (!_baseView) {
        _baseView = [[BaseView alloc]initWithFrame:self.view.frame andClickBlock:^(id sender) {
            
            NSLog(@"我有一头小毛驴，我从来都不骑");
        }];
    }
    return _baseView;
}

@end
