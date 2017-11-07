//
//  ViewController.m
//  Font_test
//
//  Created by Saltedfish on 2017/11/7.
//  Copyright © 2017年 物联利浪. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, [UIScreen mainScreen].bounds.size.width-20, [UIScreen mainScreen].bounds.size.height-20)];
    lab.text = @"即使在轻雾区也要适当降低行驶速度，适当加大跟车间距。当能见度在500—200米时，应开启近光灯、示宽灯，时速不得超过80公里，跟车间距应保持在150米以上。能见度在200—100米时，时速不超过60公里，行车间距保持在100米以上。能见度在100—50米时，时速不能超过40公里，行车间距保持50米以上。";
    lab.numberOfLines = 0;
    lab.font = [UIFont systemFontOfSize:34];
    [self.view addSubview:lab];
    
    NSLog(@"=========%@",lab.font); // 打印出来字体大小为25.5pt
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
