//
//  ViewController.m
//  UIFactory
//
//  Created by mac on 2018/10/20.
//  Copyright © 2018年 zhuchongjin. All rights reserved.
//

#import "ViewController.h"

#import "ZCJUI.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    CJButton *cjBtn  = [CJButton buttonWithFrame:CGRectMake(100, 100, 100, 100) title:@"点击我" titleColor:[UIColor redColor] backgroundColor:[UIColor grayColor] titleFont:[UIFont systemFontOfSize:14] cornerRadius:5 Target:self action:@selector(bbbbbb)];
    [cjBtn setCJButtonBorderColor:[UIColor blackColor] borderWidth:2];
    
    [cjBtn setCJButtonImageName:@"my6"];
    cjBtn.imageAlignment = CJImageAlignmentTop;
    cjBtn.spaceBetweenTitleAndImage = 10;
    [self.view addSubview:cjBtn];
    
    
    CJButton *cjBtn1  = [CJButton buttonWithFrame:CGRectMake(210, 100, 100, 100) title:@"点击我" titleColor:[UIColor redColor] backgroundColor:[UIColor grayColor] titleFont:[UIFont systemFontOfSize:14] cornerRadius:5 Target:self action:@selector(bbbbbb)];
    [cjBtn1 setCJButtonBorderColor:[UIColor redColor] borderWidth:5];
//    [cjBtn1 setCJButtonBorderColor:[UIColor blackColor] borderWidth:2];
    [cjBtn1 setCJButtonImageName:@"yue_icon"];
    cjBtn1.imageAlignment = CJImageAlignmentTop;
    cjBtn1.spaceBetweenTitleAndImage = 10;
    [self.view addSubview:cjBtn1];
    
}

- (void)bbbbbb{
    
    
    NSLog(@"+++++++");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
