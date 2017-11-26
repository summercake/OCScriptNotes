//
//  main.m
//  31-NSNumber
//
//  Created by jack on 11/25/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int age = 10;
    double number = 5.0;
    int value = 6;
    
    
    // NSNumber is used for storing number objects
    
    // convert base number type to object number
    NSNumber *ageNumber = [NSNumber numberWithInt:age];
    NSNumber *numNumber = [NSNumber numberWithDouble:number];
    NSNumber *valNumber = [NSNumber numberWithInt:value];
    
    NSNumber *num = @(number);
    NSLog(@"%@", num);
    
    NSArray *arr = @[ageNumber, numNumber, valNumber];
    NSLog(@"%@", arr);
    
    // covert object number to base number type
    int temp = [ageNumber intValue];
    NSLog(@"%i", temp);
    
    return 0;
}
