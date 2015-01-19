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
    
//    // ViewControllerクラスのインスタンスを生成する
//    ViewController *index= [ViewController new];
//    // timeLabelに選択した時刻を設定する
//    // index.timeLabel = ;
//    
//    // timeLabelから値を取得する
//    NSString *selectedTime = index.timeLabel;
//    
//    NSLog(@"%@", selectedTime);
    
}

@synthesize questionLabel, timeChange;

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)timerSelect:(id)sender {
}

- (IBAction)dcideTime:(UIButton *)sender {
    NSLog(@"ログ");
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"HH:mm:ss"];
    NSDate *now = [NSDate date];
    self.timeLabel.text = [formatter stringFromDate:now];
}
@end
