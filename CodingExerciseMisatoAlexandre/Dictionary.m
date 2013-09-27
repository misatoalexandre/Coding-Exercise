//
//  Dictionary.m
//  CodingExerciseMisatoAlexandre
//
//  Created by Misato Tina Alexandre on 9/7/13.
//  Copyright (c) 2013 Misato Tina Alexandre. All rights reserved.
//

#import "Dictionary.h"

@implementation Dictionary
-(id)init  {
    if (self) {
       // 
        
    }return self;
}
-(void)postNotification{
    self.testDictionary=[[NSDictionary alloc]initWithObjectsAndKeys:[NSNumber numberWithInt:2013],@"Yesar", [NSNumber numberWithInt:9],@"Month", nil];
    [[NSNotificationCenter defaultCenter]postNotificationName:@"TestOne" object:self userInfo:self.testDictionary];
}

@end
