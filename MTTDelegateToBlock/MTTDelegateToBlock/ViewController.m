//
//  ViewController.m
//  MTTDelegateToBlock
//
//  Created by lyleKP on 2017/3/27.
//  Copyright © 2017年 lyle. All rights reserved.
//

#import "ViewController.h"
#import "MTTView.h"
@interface ViewController ()<MTTViewDelegate>
@property (nonatomic,strong)MTTView * myView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _myView = [[MTTView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    _myView.backgroundColor = [UIColor lightGrayColor];

    SEL method ;
//    method = @selector(shootWithDelegate);
    method = @selector(shootWithBlock);
    UITapGestureRecognizer * tap  = [[UITapGestureRecognizer alloc] initWithTarget:self action:method];
    [_myView addGestureRecognizer:tap];
    [self.view addSubview:_myView];
    
    
}



/**
 以Block的形式设计的API 使用示例
 */
- (void)shootWithBlock {
    [_myView startCaculationCompletionHandle:^(NSUInteger number) {
        NSLog(@"%ld",number);
    }];
    
}


/**
 以委托的形式设计的API 使用示例
 */
- (void)shootWithDelegate {
    _myView.delegate  = self;
    [_myView startCaculation];
}


#pragma mark -- MTTViewDelegate Method
- (void)geiViewData:(NSInteger)number  {
    NSLog(@"%ld",number);
}


@end
