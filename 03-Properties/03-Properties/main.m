//
//  main.m
//  03-Properties
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//


// how to define auto properties
// after using auto properties, those set and get methods can be invoked
#import <Foundation/Foundation.h>
@interface Fraction : NSObject{
    int numerator;
    int denominator;
}
@property int numerator, denominator; // ------------------------------> declare auto properties
-(void) print;
-(double) convertToNum;
-(void) setTo : (int) n : over : (int) d;
-(void) set : (int) n : (int) d;
@end

@implementation Fraction
@synthesize numerator, denominator; // ---------------------------------> Realize auto properties

-(void) print{
    NSLog(@"%i%i", numerator, denominator);
}

-(double) convertToNum{
    if (denominator != 0) {
        return (double) numerator/denominator;
    }else{
        return 1.0;
    }
}

-(void) setTo: (int) n over : (int) d{ // ------------------------------> multiple params name method
    numerator = n;
    denominator = d;
}

//-(void) set : (int) n : (int) d{ // -------------------------------------> no params name method; it is not recommended
//    numerator = n;
//    denominator = d;
//}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction* f = (Fraction.alloc).init;
        
        f.numerator = 100;
        f.denominator = 50;
        
        [f setNumerator: 100];
        [f setDenominator: 50];
        [f print];
        NSLog(@"%f", [f convertToNum]);
    }
    return 0;
}
