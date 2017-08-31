//
//  LandScapeViewController.m
//  HHFramework
//
//  Created by caohouhong on 2017/8/31.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "LandScapeViewController.h"
#import "AppDelegate.h"

@interface LandScapeViewController ()

@end

@implementation LandScapeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 100, 50)];
    bgView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:bgView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    delegate.allowLandscapeRight = NO;
    
    //强制旋转成竖屏
    NSNumber *value = [NSNumber numberWithInt:UIDeviceOrientationPortrait];
    [[UIDevice currentDevice]setValue:value forKey:@"orientation"];
}

@end
