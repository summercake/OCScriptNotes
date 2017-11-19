//
//  main.m
//  12-MemoryMgt
//
//  Created by jack on 11/17/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        NSLog(@"retainCount = %lu", [p retainCount]);
        [p retain];
        
        NSLog(@"retainCount = %lu", [p retainCount]);

        // return can add 1 to MRC
        // release can reduce 1 to MRC
        
        [p release];
        NSLog(@"retainCount = %lu", [p retainCount]);
    }
    return 0;
}
