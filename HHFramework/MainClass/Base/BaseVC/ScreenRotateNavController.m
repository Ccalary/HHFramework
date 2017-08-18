//
//  ScreenRotateNavController.m
//  HHFramework
//
//  Created by chh on 2017/8/16.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "ScreenRotateNavController.h"

@interface ScreenRotateNavController ()

@end

@implementation ScreenRotateNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

-(BOOL)shouldAutorotate{
    return self.topViewController.shouldAutorotate;
}
//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.topViewController.supportedInterfaceOrientations;
}


@end
