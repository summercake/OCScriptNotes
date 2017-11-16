//
//  main.m
//  00-FirstCML
//
//  Created by jack on 11/15/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        // int
        int integerVar = 100;
        NSLog(@"integerVar = %i", integerVar);
        
        int a, b, c, d;
        unsigned u;
        a = 12;
        b = -24;
        u = 10;
        c = a + u;
        d = b + u;
        NSLog(@"a + u = %i, b + u = %i", c, d);
        
        // float
        float floatVar = 331.79;
        double doubleVar = 8.44e+11;
        NSLog(@"floatVar = %f", floatVar);
        NSLog(@"doubleVar = %e", doubleVar);
        NSLog(@"doubleVar = %g", doubleVar);
        
        float var1 = 123456.789e5;
        float var2 = a + 20;
        NSLog(@"%f", var1);
        NSLog(@"%f", var2);
        
        // char
        char a1 = 120;
        char b1 = 121;
        NSLog(@"%c, %c", a, b);
        NSLog(@"%i, %i", a, b);
        
        //NSString
        NSLog(@"Programming is awesome!!!");
    }
    return 0;
}
