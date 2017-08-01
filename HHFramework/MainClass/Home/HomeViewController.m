//
//  HomeViewController.m
//  HHFramework
//
//  Created by chh on 2017/7/31.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "HomeViewController.h"
#import "HUDViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *nextMonthBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 64, ScreenWidth, 50)];
    [nextMonthBtn setTitle:@"message" forState:UIControlStateNormal];
    [nextMonthBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [nextMonthBtn addTarget:self action:@selector(nextMonthBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextMonthBtn];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 60 + 64, ScreenWidth, 50)];
    [button setTitle:@"HUD" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 120 + 64, ScreenWidth, 50)];
    [button1 setTitle:@"HUD" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(button1Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)nextMonthBtnAction{
    [LCProgressHUD showMessage:@"错误"];
}

- (void)buttonAction{
    [LCProgressHUD showLoading:@"加载中..."];
}

- (void)button1Action{
    [self.navigationController pushViewController:[HUDViewController new] animated:YES];
}

@end
