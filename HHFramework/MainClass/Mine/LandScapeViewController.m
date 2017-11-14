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
    
}

@end
