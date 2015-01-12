//
//  ViewController.h
//  SleepTimer
//
//  Created by alan-arakawa-yoshihiro on H27/01/12.
//  Copyright (c) 平成27年 Yoshihiro Arakawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UIDatePicker *timeChange;
@property (weak, nonatomic) IBOutlet UIButton *createButton;

@end

