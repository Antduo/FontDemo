# FontDemo
利用runtime统一设置字体大小

利用runtime交换方法
####项目中还是调用
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

作者：秦始皇的秦
链接：http://www.jianshu.com/p/1cfa83915749
來源：简书
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
```
