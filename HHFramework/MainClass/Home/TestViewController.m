//
//  TestViewController.m
//  HHFramework
//
//  Created by caohouhong on 17/7/31.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "TestViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Test";
    self.fd_interactivePopDisabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
