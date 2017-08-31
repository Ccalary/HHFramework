//
//  MineViewController.m
//  HHFramework
//
//  Created by chh on 2017/7/31.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "MineViewController.h"
#import "LCProgressHUD.h"
#import "AppDelegate.h"
#import "LandScapeViewController.h"

@interface MineViewController ()

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 64, ScreenWidth, 50)];
    [button setTitle:@"横屏界面" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(landscapeButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
 
    [LCProgressHUD hide];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)landscapeButtonAction{
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    appDelegate.allowLandscapeRight = YES;
    //强制旋转成全屏
    NSNumber *value = [NSNumber numberWithInt:UIDeviceOrientationLandscapeLeft];
    [[UIDevice currentDevice]setValue:value forKey:@"orientation"];
    //解决开启横竖屏后自动转屏的问题
    [UIViewController attemptRotationToDeviceOrientation];
    
    [self.navigationController pushViewController:[[LandScapeViewController alloc] init] animated:YES];
}
@end
