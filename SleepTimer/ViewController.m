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

@implementation ViewController {
    NSString *saveStr;      // 一時保管用

}

@synthesize tF, dataTime;

- (void)viewDidLoad {
    [super viewDidLoad];

    // 初期値を設定する
    tF.text = @"00:00";
    saveStr = @"";
    
    NSDateFormatter *inputDateFormatter = [[NSDateFormatter alloc] init];
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ja_JP"];
    [inputDateFormatter setLocale:locale];
    [inputDateFormatter setCalendar:[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar]];
    [inputDateFormatter setDateFormat:@"HH:mm"];
    NSString *inputDateStr = @"00:00";
    NSDate *inputDate = [inputDateFormatter dateFromString:inputDateStr];
    [self setDataTime:inputDate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return NO;
    [self openControl:textField];
}

-(void)dealloc{
    [self setTF:nil];
    [self setDataTime:nil];
}

- (void)openControl:(UITextField *)tfSub{
    
    
    
}
@end
