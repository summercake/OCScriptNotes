//
//  main.m
//  24-BlockExample
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
void beforeWork(){
    NSLog(@"get up");
    NSLog(@"washing");
    NSLog(@"dressing");
    NSLog(@"driving");
}
void afterWork(){
    NSLog(@"going back");
    NSLog(@"sleeping");
}
void workDay(void (^workBlock)()){
    beforeWork();
    workBlock();
    afterWork();
}
void firstWorkDay(){
    //    beforeWork();
    //
    //    NSLog(@"working first");
    //    afterWork();
    workDay(^{
        NSLog(@"working first............................");
    });
    
}
void secondWorkDay(){
    beforeWork();
    
    workDay(^{
        NSLog(@"working second...........................");
    });
    afterWork();
    
}
void nthWorkDay(){
    beforeWork();
    
    workDay(^{
        NSLog(@"working nth................................");
    });
    afterWork();
    
}

int main(int argc, const char * argv[]) {
    firstWorkDay();
    secondWorkDay();
    nthWorkDay();
    
    __block int a = 10; // if wants to change variable value, "__block" must be used
    void (^myBlock)() = ^{
        a = 50;
        NSLog(@"a = %i", a);
    };
    myBlock();
    NSLog(@"%i", a);
    
    
    return 0;
}
