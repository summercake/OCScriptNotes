//
//  main.m
//  OperatorPractice
//
//  Created by jack on 11/15/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Calculator : NSObject
{
    double accumulator;
}
-(void) setAccumulator : (double) value;
-(void) clear;
-(double) accumulator;
-(void) add : (double) value;
-(void) subtract : (double) value;
-(void) multiply : (double) value;
-(void) divide : (double) value;
@end
@implementation Calculator
-(void) setAccumulator : (double) value{
    accumulator = value;
}
-(void) clear{
    accumulator = 0;
}
-(double) accumulator{
    return accumulator;
}
-(void) add : (double) value{
    accumulator += value;
}
-(void) subtract : (double) value{
    accumulator -= value;
}
-(void) multiply : (double) value{
    accumulator *= value;
}
-(void) divide : (double) value{
    accumulator /= value;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *cal;
        cal = [[Calculator alloc] init];
        [cal clear];
        [cal setAccumulator: 100.0];
        [cal add: 200.0];
        [cal divide: 15.0];
        [cal subtract: 10.0];
        [cal multiply: 5];
        NSLog(@"Result is %g", [cal accumulator]);
        
        // , comma operator
        int a = 2;
        a = (a *= 3, 5 < 8);
        NSLog(@"%d", a);
        int x = (a = 3, a = 4, a = 5, a = 6, a = 7, a = 8, a = 9);
        NSLog(@"a : %d, x : %d", a, x);
    }
    return 0;
}
