//
//  UIFont+Font.m
//  Font_test
//
//  Created by Saltedfish on 2017/11/7.
//  Copyright © 2017年 物联利浪. All rights reserved.
//

#import "UIFont+Font.h"
#import <objc/message.h>

@implementation UIFont (Font)
+ (void)load {
    
    Method systimeFont = class_getClassMethod(self, @selector(systemFontOfSize:));
    
    Method ll_systimeFont = class_getClassMethod(self, @selector(ll_systemFontOfSize:));
    // 交换方法
    method_exchangeImplementations(ll_systimeFont, systimeFont);
    
}


+ (UIFont *)ll_systemFontOfSize:(CGFloat)pxSize{
    
    CGFloat pt = (pxSize/96)*72;
    
    NSLog(@"pt--%f",pt);
    
    UIFont *font = [UIFont ll_systemFontOfSize:pt];
    
    return font;
    
}


@end
