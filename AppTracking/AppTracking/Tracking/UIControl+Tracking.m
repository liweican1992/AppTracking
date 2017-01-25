//
//  UIControl+Tracking.m
//  AppTracking
//
//  Created by CC on 17/1/16.
//  Copyright © 2017年 cc412. All rights reserved.
//

#import "UIControl+Tracking.h"
#import <objc/runtime.h>
@implementation UIControl (Tracking)
+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        method_exchangeImplementations(class_getInstanceMethod(self, @selector(sendAction:to:forEvent:)), class_getInstanceMethod(self, @selector(tracking_sendAction:to:forEvent:)));

    });
}
- (void)tracking_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event{
    [self tracking_sendAction:action to:target forEvent:event];
    //拦截 在这里做你想做的~
    NSString *string = [NSString stringWithFormat:@"拦截:VC:%@ target:%@ tag:%ld",NSStringFromClass([target class]),NSStringFromSelector(action),self.tag];
    NSLog(@"%@",string);
}

@end
