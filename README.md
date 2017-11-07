# FontDemo
利用runtime统一设置字体大小

利用runtime交换方法
#### 项目中还是调用
```
// 传像素值
[UIFont systemFontOfSize:34.0];
```
具体实现
```
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
```
