//
//  ViewController.m
//  SleepTimer
//
//  Created by alan-arakawa-yoshihiro on H27/01/12.
//  Copyright (c) 平成27年 Yoshihiro Arakawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // iewControllerクラスのインスタンスを生成する
    ViewController *buhin= [ViewController new];
    // questionlabelに値を設定する
    buhin.questionLabel = @"あああ";
    
    // questionlabelから値を取得する
    NSString *label = buhin.questionLabel;
    
    NSLog(@"%@", label);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)selectTime:(id)sender {
}
- (IBAction)createTime:(id)sender {
}

@end
