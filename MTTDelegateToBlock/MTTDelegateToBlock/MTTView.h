//
//  MTTView.h
//  MTTDelegateToBlock
//
//  Created by lyleKP on 2017/3/27.
//  Copyright © 2017年 lyle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTTViewDelegate.h"
typedef void (^numberBlock) (NSUInteger number);
@interface MTTView : UIView

@property (nonatomic,weak) id <MTTViewDelegate>delegate;


- (void)startCaculation ;
- (void)startCaculationCompletionHandle:(numberBlock)block ;


@end
