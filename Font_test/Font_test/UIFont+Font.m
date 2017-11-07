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
    
    Method qsh_systimeFont = class_getClassMethod(self, @selector(qsh_systemFontOfSize:));
    // 交换方法
    method_exchangeImplementations(qsh_systimeFont, systimeFont);
    
}


+ (UIFont *)qsh_systemFontOfSize:(CGFloat)pxSize{
    
    CGFloat pt = (pxSize/96)*72;
    
    NSLog(@"pt--%f",pt);
    
    UIFont *font = [UIFont qsh_systemFontOfSize:pt];
    
    return font;
    
}


@end
