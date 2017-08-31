//
//  TestViewController.m
//  HHFramework
//
//  Created by caohouhong on 17/7/31.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "TestViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
#import "DetailViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Test";
    //不可使用手势返回
    self.fd_interactivePopDisabled = YES;
    DLog(@"当前线程：%@",[NSThread currentThread]);
    
    [self asyncConcurrent];
    
    [self asyncSerial];
    
    [self syncConcurrent];
    
    UITextView *tv = [[UITextView alloc]initWithFrame:CGRectMake(80, 150, 200, 200)];
    [tv setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:tv];
    
    UIButton *nextMonthBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 50)];
    [nextMonthBtn setTitle:@"后退" forState:UIControlStateNormal];
    [nextMonthBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [nextMonthBtn addTarget:self action:@selector(nextMonthBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextMonthBtn];
    
    UIButton *nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(200, 100, 100, 50)];
    [nextBtn setTitle:@"next" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [nextBtn addTarget:self action:@selector(nextBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextBtn];
}

- (void)nextMonthBtnAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)nextBtnAction{
    DetailViewController *vc = [[DetailViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];

    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeRight];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}

// 是否隐藏状态栏
- (BOOL)prefersStatusBarHidden
{
    return NO;
}
//支持的方向
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeRight;
}

//是否可以旋转
-(BOOL)shouldAutorotate
{
    return YES;
}

//异步执行 + 并行队列
- (void)asyncConcurrent{
    //创建一个并行队列
    dispatch_queue_t queue = dispatch_queue_create("标识符", DISPATCH_QUEUE_CONCURRENT);
    
    NSLog(@"---start---");
    
    //使用异步函数封装三个任务
    dispatch_async(queue, ^{
        NSLog(@"任务1---%@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"任务2---%@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"任务3---%@", [NSThread currentThread]);
    });
    
    NSLog(@"---end---");
}

//异步执行 + 串行队列
- (void)asyncSerial{
    //创建一个串行队列
    dispatch_queue_t queue = dispatch_queue_create("标识符", DISPATCH_QUEUE_SERIAL);
    
    NSLog(@"---start---");
    //使用异步函数封装三个任务
    dispatch_async(queue, ^{
        NSLog(@"任务1---%@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"任务2---%@", [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        NSLog(@"任务3---%@", [NSThread currentThread]);
    });
    NSLog(@"---end---");
}

//同步执行 + 并行队列
- (void)syncConcurrent{
    //创建一个并行队列
    dispatch_queue_t queue = dispatch_queue_create("标识符", DISPATCH_QUEUE_CONCURRENT);
    
    NSLog(@"---start---");
    //使用同步函数封装三个任务
    dispatch_sync(queue, ^{
        NSLog(@"任务1---%@", [NSThread currentThread]);
    });
    dispatch_sync(queue, ^{
        NSLog(@"任务2---%@", [NSThread currentThread]);
    });
    dispatch_sync(queue, ^{
        NSLog(@"任务3---%@", [NSThread currentThread]);
    });
    NSLog(@"---end---");
}


@end
