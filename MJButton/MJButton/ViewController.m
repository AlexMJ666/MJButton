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
    
    MJButton* btn = [[MJButton alloc]initWithFrame:CGRectMake(0, 50, 100, 120)];
    btn.buttonTypeValue = MJButtonTypeValue1;
    [btn setTitle:@"111" forState:UIControlStateNormal];
    //[btn setImage:[UIImage imageNamed:@"QRCode"] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
