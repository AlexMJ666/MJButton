//
//  ViewController.m
//  MJButton
//
//  Created by 马家俊 on 17/3/8.
//  Copyright © 2017年 MJJ. All rights reserved.
//

#import "ViewController.h"
#import "MJButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MJButton* btn = [MJButton createMJButton:CGRectMake(0, 50, 100, 120) title:@"我是按钮" fontSize:12 Image:nil Type:MJButtonTypeValue1 handler:^(UIButton *sender) {
        NSLog(@"我点击了");
    }];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
