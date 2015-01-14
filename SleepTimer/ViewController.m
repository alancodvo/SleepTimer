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
    
    // Text　FieldのインスタンスポインタをtxtSelectedに格納する。
    txtSelected = tfSub;
    
    // UIFieldが変更される前の値を保管する。
    saveStr = tfSub.text;
    
    // UIActionViewを設定する。
    basicSheet = [[UIActionSheet alloc] initWithTitle:nil delegate:nil cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:,nil];
    [basicSheet setActionSheetStyle:UIActionSheetStyleBlackTranslucent];
    
    // UIDatePickerを時間表記で設定する。
    CGRect pickerFrame = CGRectMake(0, 44, 0, 0);
    UIDatePicker *viewDatePicker = [[UIDatePicker alloc] initWithFrame:pickerFrame];
    [viewDatePicker setDatePickerMode:UIDatePickerModeTime];
    viewDatePicker.minuteInterval = 5;
    
    // 設定されているUITextFieldの値をUIDatePickerに反映させる。
    NSDateFormatter *inputDateFormatter = [[NSDateFormatter alloc] init];
    NSLocale *local = [[NSLocale alloc] initWithLocaleIdentifier:@"ja_JP"];
    [inputDateFormatter setLocale:local];
    [inputDateFormatter setCalendar:[[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian]];
    [inputDateFormatter setDateFormat:@"HH:MM"];
    NSString *inputDateStr = tfSub.text;
    NSDate *inputDate = [inputDateFormatter dateFromString:inputDateStr];
    [viewDatePicker setLocale:local];
    [viewDatePicker setCalendar:[[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian]];
    [viewDatePicker setDate:inputDate];
    
    // UIDatePickerの値が変わった時に発生するイベントに対するアクションを指定する。
    [viewDatePicker addTarget:self action:@selector(getSelectedTime) forControlEvents:UIControlEventValueChanged]; // getSelectedTimeがない？
    
    // UIDatePickerをUIActionViewに組み込む。
    [basicSheet addSubview:viewDatePicker];
    
    // UIActionViewがモーダルなため、抜け出すためのボタン・ツールバーを生成する。
    UIToolbar *controlToolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, basicSheet.bounds.size.width, 44)];
    [controlToolBar setBarStyle:UIBarStyleBlack];
    [controlToolBar sizeToFit];
    
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    UIBarButtonItem *setButton_1 = [[UIBarButtonItem alloc] initWithTitle:@"設定" style:UIBarButtonItemStyleDone target:self action:@selector(dismissSet)]; // @selectorがちゃんと動いてない？
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithTitle:@"キャンセル" style:UIBarButtonItemStyleBordered target:self action:@selector(cancelSet)]; // UIBarButtonItemStyleBorderedと@selectorのところが微妙
    
    [controlToolBar setItems:[NSArray arrayWithObjects:spacer, setButton_1, cancelButton, nil] animated:NO];
    
    // ツールバーをUIActionViewに埋め込む
    [basicSheet addSubview:controlToolBar];
    // UIActionViewの表示・配置
    [basicSheet showInView:self.view];
    [basicSheet setBounds:CGRectMake(0, 0, 320, 520)];
    
    
    
}
@end
