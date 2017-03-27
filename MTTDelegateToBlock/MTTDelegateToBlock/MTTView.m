//
//  MTTView.m
//  MTTDelegateToBlock
//
//  Created by lyleKP on 2017/3/27.
//  Copyright © 2017年 lyle. All rights reserved.
//

#import "MTTView.h"

@interface MTTView ()

@end

@implementation MTTView

- (void)startCaculation  {
    
    NSUInteger sum = 0;
    for (NSInteger i = 0 ; i < 10000000; i ++) {
        
        sum  +=i;
    }
    [self.delegate geiViewData:sum];
}



- (void)startCaculationCompletionHandle:(numberBlock)block  {
    
    NSUInteger sum = 0;
    for (NSInteger i = 0 ; i < 10000000; i ++) {
        
        sum  +=i;
    }
    block(sum);
}

@end
