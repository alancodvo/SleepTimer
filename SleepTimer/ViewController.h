//
//  ViewController.h
//  SleepTimer
//
//  Created by alan-arakawa-yoshihiro on H27/01/12.
//  Copyright (c) 平成27年 Yoshihiro Arakawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

@property (strong, nonatomic) IBOutlet UITextField *tF;

- (IBAction)tfSub:(UITextField *)sender;
@end
