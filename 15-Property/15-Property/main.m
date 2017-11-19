//
//  main.m
//  15-Property
//
//  Created by jack on 11/18/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
#import "Room.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        Room *r = [Room new];
        Car *c = [Car new];
        Dog *d = [Dog new];
        /*
//        p.room = r;
//        p.car = c;
//        p.dog = d;
//        
//        [d release];
//        [c release];
//        [r release];
//        [p release];
         */
        p.room = r;
        
        Room *r2 = [Room new];
        p.room = r2;
    }
    return 0;
}
