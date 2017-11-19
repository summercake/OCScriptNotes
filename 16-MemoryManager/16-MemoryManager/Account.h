//
//  Account.h
//  16-MemoryManager
//
//  Created by jack on 11/19/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>\

typedef struct{
    int year;
    int month;
    int day;
    int hour;
    int minute;
    int sencond;
} MyDate;

@interface Account : NSObject
@property(nonatomic, retain) NSString *email, *pwd;
@property(nonatomic, assign) MyDate regTime;
@end
