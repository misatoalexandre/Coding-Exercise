//
//  ViewController.m
//  CodingExerciseMisatoAlexandre
//
//  Created by Misato Tina Alexandre on 9/7/13.
//  Copyright (c) 2013 Misato Tina Alexandre. All rights reserved.
//

#import "ViewController.h"
#import "Dictionary.h"
#import "EmptyViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.responseLabeliPad.text=@"";
    self.responseLabeliPhone.text=@"";
    self.responseImageiPad.hidden=YES;
    self.responseImageiPhone.hidden=YES;
    
    //Notification Observer
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(receiveNotification:) name:@"TestOne" object:nil];
}

-(void)receiveNotification:(NSNotification *)notification{
    if ([[notification name] isEqualToString:@"TestOne"])
    {
         NSDictionary *aDictionary=[notification userInfo];
        NSLog(@"Notification came through on VC %@", aDictionary);
    }
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
   
    EmptyViewController *emptyVC=(EmptyViewController *)[segue destinationViewController];
    [emptyVC setTitle:@"It's empty!"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressMeBtniPhone:(id)sender {
    
    self.responseLabeliPhone.text=@"Thanks!";
    self.responseImageiPhone.hidden=NO;
    
}

- (IBAction)pressMeBtniPad:(id)sender {
    self.responseLabeliPad.text=@"Thanks!";
    self.responseImageiPad.hidden=NO;
}

- (IBAction)sendNotificationBtniPad:(id)sender {
    //Ivoke postNotification method in Dictionary
    Dictionary *myDictionary =[[Dictionary alloc]init];
    [myDictionary postNotification];
}

- (IBAction)sendNotificationBtniPhone:(id)sender {
    //Ivoke postNotification method in Dictionary
    Dictionary *myDictionary =[[Dictionary alloc]init];
    [myDictionary postNotification];
}
@end
