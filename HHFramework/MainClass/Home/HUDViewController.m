//
//  HUDViewController.m
//  HHFramework
//
//  Created by chh on 2017/7/31.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor grayColor];
    self.navigationItem.title = @"HUD";
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:scrollView];
    
    UIButton *nextMonthBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 64, ScreenWidth, 50)];
    [nextMonthBtn setTitle:@"message" forState:UIControlStateNormal];
    [nextMonthBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [nextMonthBtn addTarget:self action:@selector(nextMonthBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:nextMonthBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end