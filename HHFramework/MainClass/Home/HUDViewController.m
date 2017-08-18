//
//  HUDViewController.m
//  HHFramework
//
//  Created by chh on 2017/7/31.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "HUDViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
#import "TestViewController.h"
#import "ScreenRotateNavController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.fd_prefersNavigationBarHidden = YES;
   
    self.view.backgroundColor = [UIColor grayColor];
    self.navigationItem.title = @"HUD";
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:scrollView];
    
    UIButton *nextMonthBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 64, ScreenWidth, 50)];
    [nextMonthBtn setTitle:@"message" forState:UIControlStateNormal];
    [nextMonthBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [nextMonthBtn addTarget:self action:@selector(nextMonthBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:nextMonthBtn];
    
}

//// 是否隐藏状态栏
//- (BOOL)prefersStatusBarHidden
//{
//    return YES;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)nextMonthBtnAction:(UIButton *)button{

    
    TestViewController *vc = [[TestViewController alloc] init];
    
    ScreenRotateNavController *navController = [[ScreenRotateNavController alloc] initWithRootViewController:vc];
    
    [self presentViewController:navController animated:YES completion:nil];
    
    
//    [self.navigationController pushViewController:[[TestViewController alloc] init] animated:YES];
}

////是否可以旋转
//- (BOOL)shouldAutorotate
//{
//    return YES;
//}
////支持的方向
//-(UIInterfaceOrientationMask)supportedInterfaceOrientations
//{
//    return UIInterfaceOrientationMaskPortrait;
//}

@end
