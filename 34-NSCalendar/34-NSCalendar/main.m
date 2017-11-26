//
//  main.m
//  34-NSCalendar
//
//  Created by jack on 11/25/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    // create NSCalendar
    NSDate *now = [NSDate date];
    NSCalendar *cal1 = [NSCalendar currentCalendar];
    NSCalendar *cal2 = [NSCalendar currentCalendar];
    NSLog(@"%p, %p", cal1, cal2);
    NSCalendarUnit type = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute;
    
    NSDateComponents *cmp = [cal1 components : type fromDate : now];
    NSLog(@"year = %li", (long)cmp.month);
    NSLog(@"day = %li", (long)cmp.day);
    NSLog(@"year = %li", (long)cmp.year);
    NSLog(@"hour = %li", (long)cmp.hour);
    NSLog(@"minute = %li", (long)cmp.minute);
    
    
    // compare two time
    NSLog(@"-------------------------------------------");
    NSString *str = @"07-16-2017 07:56";
    NSDateFormatter *f = [[NSDateFormatter alloc]init];
    f.dateFormat = @"MM-dd-yyyy HH:mm";
    NSDate *d = [f dateFromString:str];
    NSLog(@"%@", d);
    NSLog(@"%@", now);
    NSCalendarUnit t = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute;
    NSDateComponents *cmps = [cal2 components:t fromDate:d toDate:now options:0];
    NSLog(@"%ld %ld %ld %ld %ld", cmps.month, cmps.day, cmps.year, cmps.hour, cmps.minute);
    
    
    
    
    return 0;
}