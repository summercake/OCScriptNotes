//
//  main.m
//  33-NSDate
//
//  Created by jack on 11/25/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSDate *now = [NSDate date];
    NSLog(@"%@", now);
    
    // add time
    NSDate *date = [now dateByAddingTimeInterval:10];
    NSLog(@"%@", date);
    
    // get time zone
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    NSLog(@"%@", zone);
    // get the time difference
//    NSInteger *sec = [zone secondsFromGMTForDate:now];
//    NSLog(@"%i", sec);
    
    // date time format
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"MM-dd-yyyy HH:mm:ss";
    NSString *tf = [formatter stringFromDate:now];
    NSLog(@"%@", tf);
    
    // string to date
    NSString *str = @"2016-09-11 07:06:29 +0000";
    NSDateFormatter *f = [[NSDateFormatter alloc]init];
    f.dateFormat = @"yyyy-mm-dd HH:mm:ss Z";
    NSDate *d = [f dateFromString:str];
    NSLog(@"%@", d);
    
    return 0;
}
