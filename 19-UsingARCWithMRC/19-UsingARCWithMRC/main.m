//
//  main.m
//  19-UsingARCWithMRC
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {
    
    Person *p = [[Person alloc] init];
    Dog *d = [[Dog alloc] init];
    p.dog = d;
    d.owner = p;
    d = nil;
    NSLog(@"---------------");
    return 0;
}
