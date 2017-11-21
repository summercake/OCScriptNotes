//
//  main.m
//  20-Category
//
//  Created by jack on 11/21/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+Perfect.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc]init];
        p.age = 30;
        [p say];
        [p playFootball];
    }
    return 0;
}
