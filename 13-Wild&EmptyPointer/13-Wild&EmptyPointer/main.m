//
//  main.m
//  13-Wild&EmptyPointerå
//
//  Created by jack on 11/17/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        [p release]; // -----> after releasing, p is a wild pointer
                     // -----> the momeroy area that p pointed is zombie object
        // error message : *** -[Person release]: message sent to deallocated instance 0x10010bcd0
        
        p = nil; // -----------------------------> empty pointer
        
        [p release];
        [p release];
        [p release];
        [p release];
        [p release];
    }
    return 0;
}
