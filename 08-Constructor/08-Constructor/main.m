//
//  main.m
//  08-Constructor
//
//  Created by jack on 11/16/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        NSLog(@"%@", p);
        
        Person *p2 = [[Person alloc] init];
        NSLog(@"%@", p2);
        
        Person *p3 = [[Person alloc] initWithAge:30];
        NSLog(@"%@", p3);
        
        Person *p4 = [[Person alloc] initWithName: @"jack"];
        NSLog(@"%@", p4);
        
        Person *p5 = [[Person alloc] initWithAge:18 andName:@"mike"];
        NSLog(@"%@", p5);
    }
    return 0;
}
