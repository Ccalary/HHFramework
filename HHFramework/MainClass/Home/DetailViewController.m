//
//  DetailViewController.m
//  HHFramework
//
//  Created by chh on 2017/8/16.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.navigationItem.title = @"HUD";
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:scrollView];
    
    UITextView *tv = [[UITextView alloc]initWithFrame:CGRectMake(80, 150, 200, 200)];
    [tv setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:tv];
    
    UIButton *nextMonthBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, ScreenWidth, 50)];
    [nextMonthBtn setTitle:@"next" forState:UIControlStateNormal];
    [nextMonthBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [nextMonthBtn addTarget:self action:@selector(nextMonthBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:nextMonthBtn];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
  }

//支持的方向
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

//是否可以旋转
-(BOOL)shouldAutorotate
{
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)nextMonthBtnAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
