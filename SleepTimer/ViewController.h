//
//  ViewController.h
//  SleepTimer
//
//  Created by alan-arakawa-yoshihiro on H27/01/12.
//  Copyright (c) 平成27年 Yoshihiro Arakawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UIPickerViewDelegate>  // PickerViewのデータやタップ時のイベントのため
{
    NSMutableArray *hour, *minute;    // PickerViewの年と月のデータ保持用
}

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UIDatePicker *timeChange;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIButton *createButton;
- (IBAction)timerSelect:(id)sender; // 時刻選んだ時のアクション
- (IBAction)dcideTime:(UIButton *)sender;　// 設定ボタン押した時のアクション

@end
