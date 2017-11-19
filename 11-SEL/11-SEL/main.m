//
//  main.m
//  11-SEL
//
//  Created by jack on 11/17/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1. SEL can check whether some methods exist in some class or object
        SEL sel = @selector(setAge:);
        Person *p = [Person new];
        BOOL flag = [p respondsToSelector:sel];
        NSLog(@"flag = %i", flag);
        
        SEL sel1 = @selector(test);
        flag = [Person respondsToSelector:sel1];
        NSLog(@"flag = %i", flag);
        
        SEL sel2 = @selector(demo);
        Person *p1 = [Person new];
        [p1 performSelector:sel2];
        
        SEL sel3 = @selector(signalWithNum:);
        [p1 performSelector:sel3 withObject:@"signal, signal"];
        
        
        SEL sel4 = @selector(run);
        Car *c = [Car new];
        Person *P = [Person new];
        [p makeObject:c andSEL:sel4];
        
        
    }
    return 0;
}
