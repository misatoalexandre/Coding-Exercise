//
//  ViewController.h
//  CodingExerciseMisatoAlexandre
//
//  Created by Misato Tina Alexandre on 9/7/13.
//  Copyright (c) 2013 Misato Tina Alexandre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *responseLabeliPhone;
@property (weak, nonatomic) IBOutlet UILabel *responseLabeliPad;
@property (weak, nonatomic) IBOutlet UIImageView *responseImageiPhone;

@property (weak, nonatomic) IBOutlet UIImageView *responseImageiPad;
- (IBAction)pressMeBtniPhone:(id)sender;
- (IBAction)pressMeBtniPad:(id)sender;



- (IBAction)sendNotificationBtniPhone:(id)sender;
- (IBAction)sendNotificationBtniPad:(id)sender;

@end
